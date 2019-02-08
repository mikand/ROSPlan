(define (problem pandora_strategic_mission)
(:domain pandora_domain_strategic)
(:objects
auv - vehicle
mission_site_start_point_0 mission_site_start_point_1 mission_site_start_point_2 mission_site_start_point_3 wp_auv0 - waypoint
mission0 mission1 mission10 mission11 mission12 mission13 mission14 mission15 mission16 mission17 mission18 mission19 mission2 mission20 mission21 mission22 mission23 mission24 mission3 mission4 mission5 mission6 mission7 mission8 mission9 - mission
)
(:init
(vehicle_free auv)
(= (mission_total) 0)
(at auv wp_auv0) (= (charge auv) 1200)

(recharge_at mission_site_start_point_0)

(active mission0)
(active mission1)
(active mission10)
(active mission11)
(active mission12)
(active mission13)
(active mission14)
(active mission15)
(active mission16)
(active mission17)
(active mission18)
(active mission19)
(active mission2)
(active mission20)
(active mission21)
(active mission22)
(active mission23)
(active mission24)
(active mission3)
(active mission4)
(active mission5)
(active mission6)
(active mission7)
(active mission8)
(active mission9)

(at 4100 (not (active mission0)))
(at 7100 (not (active mission1)))
(at 99999 (not (active mission10)))
(at 99999 (not (active mission11)))
(at 99999 (not (active mission12)))
(at 99999 (not (active mission13)))
(at 99999 (not (active mission14)))
(at 99999 (not (active mission15)))
(at 99999 (not (active mission16)))
(at 99999 (not (active mission17)))
(at 99999 (not (active mission18)))
(at 99999 (not (active mission19)))
(at 99999 (not (active mission2)))
(at 99999 (not (active mission20)))
(at 99999 (not (active mission21)))
(at 99999 (not (active mission22)))
(at 99999 (not (active mission23)))
(at 99999 (not (active mission24)))
(at 99999 (not (active mission3)))
(at 99999 (not (active mission4)))
(at 99999 (not (active mission5)))
(at 99999 (not (active mission6)))
(at 99999 (not (active mission7)))
(at 99999 (not (active mission8)))
(at 99999 (not (active mission9)))

(in mission0 mission_site_start_point_1)
(in mission1 mission_site_start_point_1)
(in mission10 mission_site_start_point_2)
(in mission11 mission_site_start_point_2)
(in mission12 mission_site_start_point_2)
(in mission13 mission_site_start_point_2)
(in mission14 mission_site_start_point_2)
(in mission15 mission_site_start_point_2)
(in mission16 mission_site_start_point_2)
(in mission17 mission_site_start_point_2)
(in mission18 mission_site_start_point_2)
(in mission19 mission_site_start_point_2)
(in mission2 mission_site_start_point_1)
(in mission20 mission_site_start_point_3)
(in mission21 mission_site_start_point_3)
(in mission22 mission_site_start_point_3)
(in mission23 mission_site_start_point_3)
(in mission24 mission_site_start_point_3)
(in mission3 mission_site_start_point_1)
(in mission4 mission_site_start_point_1)
(in mission5 mission_site_start_point_1)
(in mission6 mission_site_start_point_1)
(in mission7 mission_site_start_point_1)
(in mission8 mission_site_start_point_1)
(in mission9 mission_site_start_point_1)

(= (mission_duration mission0) 261.868)
(= (mission_duration mission1) 242.066)
(= (mission_duration mission10) 242.066)
(= (mission_duration mission11) 242.066)
(= (mission_duration mission12) 340.705)
(= (mission_duration mission13) 332.347)
(= (mission_duration mission14) 364.822)
(= (mission_duration mission15) 366.427)
(= (mission_duration mission16) 607.311)
(= (mission_duration mission17) 793.546)
(= (mission_duration mission18) 787.447)
(= (mission_duration mission19) 626.011)
(= (mission_duration mission2) 336.17)
(= (mission_duration mission20) 336.17)
(= (mission_duration mission21) 384.45)
(= (mission_duration mission22) 327.052)
(= (mission_duration mission23) 653.218)
(= (mission_duration mission24) 733.812)
(= (mission_duration mission3) 365.49)
(= (mission_duration mission4) 340.969)
(= (mission_duration mission5) 337.334)
(= (mission_duration mission6) 608.425)
(= (mission_duration mission7) 800.794)
(= (mission_duration mission8) 692.803)
(= (mission_duration mission9) 629.094)

(connected mission_site_start_point_0 mission_site_start_point_1) (= (distance mission_site_start_point_0 mission_site_start_point_1) 53.8888)
(connected mission_site_start_point_0 mission_site_start_point_2) (= (distance mission_site_start_point_0 mission_site_start_point_2) 102)
(connected mission_site_start_point_0 mission_site_start_point_3) (= (distance mission_site_start_point_0 mission_site_start_point_3) 58.3438)
(connected mission_site_start_point_0 wp_auv0) (= (distance mission_site_start_point_0 wp_auv0) 56.7891)
(connected wp_auv0 mission_site_start_point_0) (= (distance wp_auv0 mission_site_start_point_0) 56.7891)
(connected mission_site_start_point_1 mission_site_start_point_0) (= (distance mission_site_start_point_1 mission_site_start_point_0) 53.8888)
(connected mission_site_start_point_1 mission_site_start_point_2) (= (distance mission_site_start_point_1 mission_site_start_point_2) 50)
(connected mission_site_start_point_1 mission_site_start_point_3) (= (distance mission_site_start_point_1 mission_site_start_point_3) 50)
(connected mission_site_start_point_1 wp_auv0) (= (distance mission_site_start_point_1 wp_auv0) 22.561)
(connected wp_auv0 mission_site_start_point_1) (= (distance wp_auv0 mission_site_start_point_1) 22.561)
(connected mission_site_start_point_2 mission_site_start_point_0) (= (distance mission_site_start_point_2 mission_site_start_point_0) 102)
(connected mission_site_start_point_2 mission_site_start_point_1) (= (distance mission_site_start_point_2 mission_site_start_point_1) 50)
(connected mission_site_start_point_2 mission_site_start_point_3) (= (distance mission_site_start_point_2 mission_site_start_point_3) 70.7107)
(connected mission_site_start_point_2 wp_auv0) (= (distance mission_site_start_point_2 wp_auv0) 63.3167)
(connected wp_auv0 mission_site_start_point_2) (= (distance wp_auv0 mission_site_start_point_2) 63.3167)
(connected mission_site_start_point_3 mission_site_start_point_0) (= (distance mission_site_start_point_3 mission_site_start_point_0) 58.3438)
(connected mission_site_start_point_3 mission_site_start_point_1) (= (distance mission_site_start_point_3 mission_site_start_point_1) 50)
(connected mission_site_start_point_3 mission_site_start_point_2) (= (distance mission_site_start_point_3 mission_site_start_point_2) 70.7107)
(connected mission_site_start_point_3 wp_auv0) (= (distance mission_site_start_point_3 wp_auv0) 70.7743)
(connected wp_auv0 mission_site_start_point_3) (= (distance wp_auv0 mission_site_start_point_3) 70.7743)

)
(:metric maximize (mission_total)) (:goal (> (mission_total) 0))
)
