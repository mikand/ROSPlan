#!/usr/bin/env python

import time
from itertools import cycle

from rosplan_planning_system.pypddlplus import parse_instance
from pysmt.shortcuts import (Implies, And, Not, qelim, Solver, ForAll, GE, LE,
                             FreshSymbol, Plus, Minus, Exists, Times,
                             Real, is_valid, qelim, get_model, is_sat)
import pysmt.typing as types
from pysmt.logics import QF_LRA, LRA
from pysmt.oracles import get_logic

from rosplan_planning_system.pyrobustenvelope.stn import STN
from rosplan_planning_system.pyrobustenvelope.encoder import Encoder
from rosplan_planning_system.pyrobustenvelope.construct import ConstructAlgorithm

def validate_stn_plan(domain_fname, problem_fname, plan_fname, debug=False,
                      early_forall_elimination=False, compact_encoding=True,
                      learn=False, solver=None, splitting=None, epsilon=None,
                      simplify_effects=True):
    if splitting is None:
        splitting = "full"
    assert splitting in ["monolithic", "partial", "full"]
    stn = STN(plan_fname)
    if stn.is_parametric():
        raise ValueError("Cannot validate a parametric plan!")

    instance = parse_instance(domain_fname, problem_fname)

    enc = Encoder(instance, stn, debug=debug,
                  early_elimination=early_forall_elimination,
                  compact_encoding=compact_encoding,
                  solver=solver, epsilon=epsilon,
                  simplify_effects=simplify_effects,
                  learning=learn)

    l = LRA
    if early_forall_elimination:
        l = QF_LRA

    assumptions, proof_obligations = enc.encode()
    if len(enc.parameter_vars) != 0:
        raise ValueError("Unable to validate a parametric problem instance and plan!")

    with Solver(name=solver, logic=l) as s:
        s.add_assertion(And(assumptions))

        exist_check = s.solve()
        if not exist_check:
            return False, "Plan is unrealizable"

        if splitting == 'monolithic':
            constraints = And(y for x in proof_obligations for y in x[1])
            s.add_assertion(Not(constraints))
            valid_check = s.solve()
            if valid_check:
                return False, "Plan Invalid"
            return True, None
        else:
            for k, fs in proof_obligations:
                if debug:
                    print("Checking %s..." % k)
                split = fs
                if splitting == 'partial':
                    split = [And(fs)]
                for f in split:
                    res = s.solve([Not(f)])
                    if not res:
                        # UNSAT
                        if debug:
                            print(" - Ok")
                        if learn:
                            s.add_assertion(f) # Learn f
                    else:
                        if debug:
                            print(" - Failed! %s" % f.serialize())
                            m = s.get_model()
                            res = []
                            for var, v in m:
                                res.append("%s = %s" % (var, v))
                            res.sort()
                            print("\n".join(res))
                        return False, k + " invalid"
            return True, None



def synthesis_stn_plan(domain_fname, problem_fname, plan_fname, debug=False,
                       splitting=None, early_forall_elimination=False,
                       compact_encoding=True, solver=None, qelim_name=None,
                       epsilon=None, simplify_effects=True, learn=False):
    if splitting is None:
        splitting = "partial"
    assert splitting in ["monolithic", "partial", "full"]

    stn = STN(plan_fname)

    instance = parse_instance(domain_fname, problem_fname)
    enc = Encoder(instance, stn, debug=debug,
                  early_elimination=early_forall_elimination,
                  compact_encoding=compact_encoding,
                  solver=solver, qelim_name=qelim_name, epsilon=epsilon,
                  simplify_effects=simplify_effects, learning=learn)

    f = enc.synthesize_parameter_region(splitting=splitting)
    return f.simplify(), enc.parameter_vars


def compute_envelope(domain_fname, problem_fname, plan_fname, debug=False,
                     splitting=None, early_forall_elimination=False,
                     compact_encoding=True, solver=None, qelim_name=None,
                     epsilon=None, simplify_effects=True, learn=False):
    from pysmt.shortcuts import Optimizer

    if splitting is None:
        splitting = "partial"

    if debug: print("Computing region...")
    region, params = synthesis_stn_plan(domain_fname, problem_fname, plan_fname,
                            debug=debug,
                            early_forall_elimination=early_forall_elimination,
                            compact_encoding=compact_encoding,
                            splitting=splitting,
                            solver=solver,
                            qelim_name=qelim_name, epsilon=epsilon,
                            simplify_effects=simplify_effects,
                            learn=learn)
    if debug: print("done.")

    if debug: print("Computing region of bounds...")
    implicant = []
    bounds = {}
    for p, pv in params.items():
        lb = FreshSymbol(types.REAL, template="lb_%s_%%d" % p.name)
        ub = FreshSymbol(types.REAL, template="ub_%s_%%d" % p.name)

        bounds[p] = (lb, ub)

        implicant.append(And(GE(pv, lb), LE(pv, ub)))

    f = ForAll(set(params.values()), Implies(And(implicant), region))
    qe_f = qelim(f, solver_name=qelim_name)
    bounds_region = And(qe_f, And(LE(lb, ub) for (lb, ub) in bounds.values()))
    if debug: print("done.")

    if debug: print("Finding maximal bounds...")
    tomin = Plus(Times(Real(p.weight), Minus(l, u)) for p, (l, u) in bounds.items())

    opt = Optimizer(name='z3', logic=QF_LRA)
    opt.add_assertion(bounds_region)

    loops = [30]
    def ensure_quit(model):
        if debug: print("OPT: %s" % model.get_value(Times(Real(-1), tomin)))
        loops[0] -= 1
        return loops[0] <= 0

    optimal = opt.optimize(tomin, callback=ensure_quit)

    if optimal is None:
        return None
    else:
        envelope = {}
        for p in params:
            lb, ub = bounds[p]
            lv = optimal.get_value(lb)
            uv = optimal.get_value(ub)
            envelope[p] = (lv, uv)
        return envelope

    # max_value = None
    # max_loops = 50
    # envelope = None
    # with Solver(name=solver, logic=QF_LRA) as s:
    #     s.add_assertion(bounds_region)
    #     while max_loops > 0:
    #         max_loops -= 1
    #         if max_value is not None:
    #             s.add_assertion(GT(tomax, max_value))
    #         r = s.solve()
    #         if r:
    #             max_value = s.get_value(tomax)
    #             envelope = {}
    #             for p in params:
    #                 lb, ub = bounds[p]
    #                 lv = s.get_value(lb)
    #                 uv = s.get_value(ub)
    #                 envelope[p] = (lv, uv)
    #         else:
    #             break
    #         if debug: print("Found an envelope with optimality value: %s" % max_value)
    # if debug: print("done.")

    # return envelope






def compute_envelope_construct(domain_fname, problem_fname, plan_fname, debug=False,
                     splitting=None, early_forall_elimination=False,
                     compact_encoding=True, solver=None, qelim_name=None,
                     epsilon=None, simplify_effects=True, learn=False):
    if splitting is None:
        splitting = "partial"
    assert splitting in ["monolithic", "partial", "full"]

    stn = STN(plan_fname)
    instance = parse_instance(domain_fname, problem_fname)
    enc = Encoder(instance, stn, debug=debug,
                  early_elimination=early_forall_elimination,
                  compact_encoding=compact_encoding,
                  solver=solver, qelim_name=qelim_name, epsilon=epsilon,
                  simplify_effects=simplify_effects, learning=learn)

    c = ConstructAlgorithm(instance, stn, enc, debug=debug, splitting=splitting,
                           solver=solver, qelim_name=qelim_name)
    return c.run()
