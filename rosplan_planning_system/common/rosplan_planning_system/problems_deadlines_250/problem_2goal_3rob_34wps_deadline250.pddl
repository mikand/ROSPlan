(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp1)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp2)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 202.5075 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 202.5075 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 202.5075 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 202.5075 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 3)
    (= (distance wp1 wp0) 3)
    (= (distance wp0 wp2) 13)
    (= (distance wp2 wp0) 13)
    (= (distance wp0 wp3) 1)
    (= (distance wp3 wp0) 1)
    (= (distance wp0 printer0) 8)
    (= (distance printer0 wp0) 8)
    (= (distance wp0 printer1) 17)
    (= (distance printer1 wp0) 17)
    (= (distance wp0 printer2) 25)
    (= (distance printer2 wp0) 25)
    (= (distance wp1 wp2) 12)
    (= (distance wp2 wp1) 12)
    (= (distance wp1 wp3) 4)
    (= (distance wp3 wp1) 4)
    (= (distance wp1 printer0) 7)
    (= (distance printer0 wp1) 7)
    (= (distance wp1 printer1) 14)
    (= (distance printer1 wp1) 14)
    (= (distance wp1 printer2) 22)
    (= (distance printer2 wp1) 22)
    (= (distance wp2 wp3) 12)
    (= (distance wp3 wp2) 12)
    (= (distance wp2 printer0) 5)
    (= (distance printer0 wp2) 5)
    (= (distance wp2 printer1) 10)
    (= (distance printer1 wp2) 10)
    (= (distance wp2 printer2) 18)
    (= (distance printer2 wp2) 18)
    (= (distance wp3 printer0) 7)
    (= (distance printer0 wp3) 7)
    (= (distance wp3 printer1) 18)
    (= (distance printer1 wp3) 18)
    (= (distance wp3 printer2) 26)
    (= (distance printer2 wp3) 26)
    (= (distance printer0 printer1) 11)
    (= (distance printer1 printer0) 11)
    (= (distance printer0 printer2) 19)
    (= (distance printer2 printer0) 19)
    (= (distance printer1 printer2) 8)
    (= (distance printer2 printer1) 8)
)
(:goal (and
    (papers_delivered wp0)
    (papers_delivered wp1)
))
)
