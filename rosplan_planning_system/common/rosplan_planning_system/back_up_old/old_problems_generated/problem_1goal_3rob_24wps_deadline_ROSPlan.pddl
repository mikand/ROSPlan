(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
    robot0 robot1 robot2 - robot
    printer0 printer1 - printer
)
(:init
    (robot_at robot0 wp0)
    (robot_at robot1 wp1)
    (robot_at robot2 wp1)

    (undocked robot0)
    (undocked robot1)
    (undocked robot2)


    (localised robot0)
    (localised robot1)
    (localised robot2)

    (dock_at wp0)


    (nocarrying_papers robot0)
    (nocarrying_papers robot2)

    (asked_unload robot2)


    (delivery_destination wp0)
    (delivery_destination wp1)
    (delivery_destination wp2)
    (delivery_destination wp3)

    (at 1567.09 (not (delivery_destination wp0)))
    (at 1567.09 (not (delivery_destination wp1)))
    (at 1567.09 (not (delivery_destination wp2)))
    (at 1567.09 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 139)
    (= (distance wp1 wp0) 139)
    (= (distance wp0 wp2) 104)
    (= (distance wp2 wp0) 104)
    (= (distance wp0 wp3) 177)
    (= (distance wp3 wp0) 177)
    (= (distance wp0 printer0) 105)
    (= (distance printer0 wp0) 105)
    (= (distance wp0 printer1) 108)
    (= (distance printer1 wp0) 108)
    (= (distance wp1 wp2) 35)
    (= (distance wp2 wp1) 35)
    (= (distance wp1 wp3) 72)
    (= (distance wp3 wp1) 72)
    (= (distance wp1 printer0) 124)
    (= (distance printer0 wp1) 124)
    (= (distance wp1 printer1) 91)
    (= (distance printer1 wp1) 91)
    (= (distance wp2 wp3) 101)
    (= (distance wp3 wp2) 101)
    (= (distance wp2 printer0) 153)
    (= (distance printer0 wp2) 153)
    (= (distance wp2 printer1) 120)
    (= (distance printer1 wp2) 120)
    (= (distance wp3 printer0) 72)
    (= (distance printer0 wp3) 72)
    (= (distance wp3 printer1) 69)
    (= (distance printer1 wp3) 69)
    (= (distance printer0 printer1) 33)
    (= (distance printer1 printer0) 33)

)
(:goal (and
    (papers_delivered wp1)
))
)