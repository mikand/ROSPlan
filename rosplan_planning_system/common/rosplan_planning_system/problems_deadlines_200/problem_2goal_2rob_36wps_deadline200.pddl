(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp1)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp2)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 1520.008 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 1520.008 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 1520.008 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 1520.008 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 1520.008 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 1520.008 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 17)
    (= (distance wp1 wp0) 17)
    (= (distance wp0 wp2) 3)
    (= (distance wp2 wp0) 3)
    (= (distance wp0 wp3) 17)
    (= (distance wp3 wp0) 17)
    (= (distance wp0 wp4) 17)
    (= (distance wp4 wp0) 17)
    (= (distance wp0 wp5) 9)
    (= (distance wp5 wp0) 9)
    (= (distance wp0 printer0) 17)
    (= (distance printer0 wp0) 17)
    (= (distance wp0 printer1) 11)
    (= (distance printer1 wp0) 11)
    (= (distance wp0 printer2) 21)
    (= (distance printer2 wp0) 21)
    (= (distance wp1 wp2) 20)
    (= (distance wp2 wp1) 20)
    (= (distance wp1 wp3) 2)
    (= (distance wp3 wp1) 2)
    (= (distance wp1 wp4) 10)
    (= (distance wp4 wp1) 10)
    (= (distance wp1 wp5) 18)
    (= (distance wp5 wp1) 18)
    (= (distance wp1 printer0) 4)
    (= (distance printer0 wp1) 4)
    (= (distance wp1 printer1) 6)
    (= (distance printer1 wp1) 6)
    (= (distance wp1 printer2) 4)
    (= (distance printer2 wp1) 4)
    (= (distance wp2 wp3) 20)
    (= (distance wp3 wp2) 20)
    (= (distance wp2 wp4) 20)
    (= (distance wp4 wp2) 20)
    (= (distance wp2 wp5) 8)
    (= (distance wp5 wp2) 8)
    (= (distance wp2 printer0) 20)
    (= (distance printer0 wp2) 20)
    (= (distance wp2 printer1) 14)
    (= (distance printer1 wp2) 14)
    (= (distance wp2 printer2) 24)
    (= (distance printer2 wp2) 24)
    (= (distance wp3 wp4) 8)
    (= (distance wp4 wp3) 8)
    (= (distance wp3 wp5) 18)
    (= (distance wp5 wp3) 18)
    (= (distance wp3 printer0) 6)
    (= (distance printer0 wp3) 6)
    (= (distance wp3 printer1) 6)
    (= (distance printer1 wp3) 6)
    (= (distance wp3 printer2) 4)
    (= (distance printer2 wp3) 4)
    (= (distance wp4 wp5) 18)
    (= (distance wp5 wp4) 18)
    (= (distance wp4 printer0) 14)
    (= (distance printer0 wp4) 14)
    (= (distance wp4 printer1) 6)
    (= (distance printer1 wp4) 6)
    (= (distance wp4 printer2) 10)
    (= (distance printer2 wp4) 10)
    (= (distance wp5 printer0) 18)
    (= (distance printer0 wp5) 18)
    (= (distance wp5 printer1) 12)
    (= (distance printer1 wp5) 12)
    (= (distance wp5 printer2) 22)
    (= (distance printer2 wp5) 22)
    (= (distance printer0 printer1) 8)
    (= (distance printer1 printer0) 8)
    (= (distance printer0 printer2) 4)
    (= (distance printer2 printer0) 4)
    (= (distance printer1 printer2) 10)
    (= (distance printer2 printer1) 10)
)
(:goal (and
    (papers_delivered wp1)
    (papers_delivered wp2)
))
)