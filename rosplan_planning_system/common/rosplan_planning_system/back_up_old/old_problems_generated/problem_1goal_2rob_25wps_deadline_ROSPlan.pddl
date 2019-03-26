(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    robot0 robot1 - robot
    printer0 printer1 - printer
)
(:init
    (robot_at robot1 printer0)
    (robot_at robot0 wp3)

    (undocked robot0)
    (undocked robot1)


    (localised robot0)
    (localised robot1)

    (dock_at wp0)


    (nocarrying_papers robot1)

    (asked_unload robot0)


    (delivery_destination wp0)
    (delivery_destination wp1)
    (delivery_destination wp2)
    (delivery_destination wp3)
    (delivery_destination wp4)

    (at 581.308 (not (delivery_destination wp0)))
    (at 581.308 (not (delivery_destination wp1)))
    (at 581.308 (not (delivery_destination wp2)))
    (at 581.308 (not (delivery_destination wp3)))
    (at 581.308 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 44)
    (= (distance wp1 wp0) 44)
    (= (distance wp0 wp2) 58)
    (= (distance wp2 wp0) 58)
    (= (distance wp0 wp3) 79)
    (= (distance wp3 wp0) 79)
    (= (distance wp0 wp4) 22)
    (= (distance wp4 wp0) 22)
    (= (distance wp0 printer0) 96)
    (= (distance printer0 wp0) 96)
    (= (distance wp0 printer1) 33)
    (= (distance printer1 wp0) 33)
    (= (distance wp1 wp2) 68)
    (= (distance wp2 wp1) 68)
    (= (distance wp1 wp3) 69)
    (= (distance wp3 wp1) 69)
    (= (distance wp1 wp4) 22)
    (= (distance wp4 wp1) 22)
    (= (distance wp1 printer0) 86)
    (= (distance printer0 wp1) 86)
    (= (distance wp1 printer1) 43)
    (= (distance printer1 wp1) 43)
    (= (distance wp2 wp3) 21)
    (= (distance wp3 wp2) 21)
    (= (distance wp2 wp4) 46)
    (= (distance wp4 wp2) 46)
    (= (distance wp2 printer0) 44)
    (= (distance printer0 wp2) 44)
    (= (distance wp2 printer1) 91)
    (= (distance printer1 wp2) 91)
    (= (distance wp3 wp4) 59)
    (= (distance wp4 wp3) 59)
    (= (distance wp3 printer0) 33)
    (= (distance printer0 wp3) 33)
    (= (distance wp3 printer1) 112)
    (= (distance printer1 wp3) 112)
    (= (distance wp4 printer0) 76)
    (= (distance printer0 wp4) 76)
    (= (distance wp4 printer1) 53)
    (= (distance printer1 wp4) 53)
    (= (distance printer0 printer1) 129)
    (= (distance printer1 printer0) 129)

)
(:goal (and
    (papers_delivered wp3)
))
)
