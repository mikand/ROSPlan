(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    robot0 robot1 robot2 - robot
    printer0 printer1 printer2 printer3 - printer
)
(:init
    (robot_at robot0 wp0)
    (robot_at robot1 wp0)
    (robot_at robot2 wp0)

    (undocked robot0)
    (undocked robot1)
    (undocked robot2)


    (localised robot0)
    (localised robot1)
    (localised robot2)

    (dock_at wp0)


    (nocarrying_papers robot0)
    (nocarrying_papers robot1)
    (nocarrying_papers robot2)



    (delivery_destination wp0)
    (at 3643.25 (not (delivery_destination wp0)))
    (delivery_destination wp1)
    (at 3643.25 (not (delivery_destination wp1)))
    (delivery_destination wp2)
    (at 3643.25 (not (delivery_destination wp2)))
    (delivery_destination wp3)
    (at 3643.25 (not (delivery_destination wp3)))
    (delivery_destination wp4)
    (at 3643.25 (not (delivery_destination wp4)))
    (delivery_destination wp5)
    (at 3643.25 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 99)
    (= (distance wp1 wp0) 99)
    (= (distance wp0 wp2) 101)
    (= (distance wp2 wp0) 101)
    (= (distance wp0 wp3) 101)
    (= (distance wp3 wp0) 101)
    (= (distance wp0 wp4) 79)
    (= (distance wp4 wp0) 79)
    (= (distance wp0 wp5) 109)
    (= (distance wp5 wp0) 109)
    (= (distance wp0 printer0) 72)
    (= (distance printer0 wp0) 72)
    (= (distance wp0 printer1) 83)
    (= (distance printer1 wp0) 83)
    (= (distance wp0 printer2) 115)
    (= (distance printer2 wp0) 115)
    (= (distance wp0 printer3) 54)
    (= (distance printer3 wp0) 54)
    (= (distance wp1 wp2) 110)
    (= (distance wp2 wp1) 110)
    (= (distance wp1 wp3) 4)
    (= (distance wp3 wp1) 4)
    (= (distance wp1 wp4) 154)
    (= (distance wp4 wp1) 154)
    (= (distance wp1 wp5) 32)
    (= (distance wp5 wp1) 32)
    (= (distance wp1 printer0) 49)
    (= (distance printer0 wp1) 49)
    (= (distance wp1 printer1) 44)
    (= (distance printer1 wp1) 44)
    (= (distance wp1 printer2) 124)
    (= (distance printer2 wp1) 124)
    (= (distance wp1 printer3) 53)
    (= (distance printer3 wp1) 53)
    (= (distance wp2 wp3) 112)
    (= (distance wp3 wp2) 112)
    (= (distance wp2 wp4) 44)
    (= (distance wp4 wp2) 44)
    (= (distance wp2 wp5) 78)
    (= (distance wp5 wp2) 78)
    (= (distance wp2 printer0) 61)
    (= (distance printer0 wp2) 61)
    (= (distance wp2 printer1) 66)
    (= (distance printer1 wp2) 66)
    (= (distance wp2 printer2) 14)
    (= (distance printer2 wp2) 14)
    (= (distance wp2 printer3) 57)
    (= (distance printer3 wp2) 57)
    (= (distance wp3 wp4) 156)
    (= (distance wp4 wp3) 156)
    (= (distance wp3 wp5) 34)
    (= (distance wp5 wp3) 34)
    (= (distance wp3 printer0) 51)
    (= (distance printer0 wp3) 51)
    (= (distance wp3 printer1) 46)
    (= (distance printer1 wp3) 46)
    (= (distance wp3 printer2) 126)
    (= (distance printer2 wp3) 126)
    (= (distance wp3 printer3) 55)
    (= (distance printer3 wp3) 55)
    (= (distance wp4 wp5) 122)
    (= (distance wp5 wp4) 122)
    (= (distance wp4 printer0) 105)
    (= (distance printer0 wp4) 105)
    (= (distance wp4 printer1) 110)
    (= (distance printer1 wp4) 110)
    (= (distance wp4 printer2) 36)
    (= (distance printer2 wp4) 36)
    (= (distance wp4 printer3) 101)
    (= (distance printer3 wp4) 101)
    (= (distance wp5 printer0) 37)
    (= (distance printer0 wp5) 37)
    (= (distance wp5 printer1) 26)
    (= (distance printer1 wp5) 26)
    (= (distance wp5 printer2) 92)
    (= (distance printer2 wp5) 92)
    (= (distance wp5 printer3) 55)
    (= (distance printer3 wp5) 55)
    (= (distance printer0 printer1) 11)
    (= (distance printer1 printer0) 11)
    (= (distance printer0 printer2) 75)
    (= (distance printer2 printer0) 75)
    (= (distance printer0 printer3) 18)
    (= (distance printer3 printer0) 18)
    (= (distance printer1 printer2) 80)
    (= (distance printer2 printer1) 80)
    (= (distance printer1 printer3) 29)
    (= (distance printer3 printer1) 29)
    (= (distance printer2 printer3) 71)
    (= (distance printer3 printer2) 71)

)
(:goal (and
    (papers_delivered wp2)
    (papers_delivered wp5)
    (papers_delivered wp0)
    (papers_delivered wp2)
    (papers_delivered wp4)
    (papers_delivered wp4)
    (papers_delivered wp2)
    (papers_delivered wp2)
    (papers_delivered wp2)
))
)
