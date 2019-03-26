(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
    printer0 printer1 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp3)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp0)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 67.003 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 67.003 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 67.003 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 67.003 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 26)
    (= (distance wp1 wp0) 26)
    (= (distance wp0 wp2) 17)
    (= (distance wp2 wp0) 17)
    (= (distance wp0 wp3) 28)
    (= (distance wp3 wp0) 28)
    (= (distance wp0 printer0) 17)
    (= (distance printer0 wp0) 17)
    (= (distance wp0 printer1) 17)
    (= (distance printer1 wp0) 17)
    (= (distance wp1 wp2) 9)
    (= (distance wp2 wp1) 9)
    (= (distance wp1 wp3) 2)
    (= (distance wp3 wp1) 2)
    (= (distance wp1 printer0) 13)
    (= (distance printer0 wp1) 13)
    (= (distance wp1 printer1) 9)
    (= (distance printer1 wp1) 9)
    (= (distance wp2 wp3) 11)
    (= (distance wp3 wp2) 11)
    (= (distance wp2 printer0) 6)
    (= (distance printer0 wp2) 6)
    (= (distance wp2 printer1) 6)
    (= (distance printer1 wp2) 6)
    (= (distance wp3 printer0) 15)
    (= (distance printer0 wp3) 15)
    (= (distance wp3 printer1) 11)
    (= (distance printer1 wp3) 11)
    (= (distance printer0 printer1) 4)
    (= (distance printer1 printer0) 4)
)
(:goal (and
    (papers_delivered wp3)
))
)
