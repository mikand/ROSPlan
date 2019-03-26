(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp3)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp1)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 1635.006 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 1635.006 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 1635.006 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 1635.006 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 1635.006 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 53)
    (= (distance wp1 wp0) 53)
    (= (distance wp0 wp2) 37)
    (= (distance wp2 wp0) 37)
    (= (distance wp0 wp3) 10)
    (= (distance wp3 wp0) 10)
    (= (distance wp0 wp4) 14)
    (= (distance wp4 wp0) 14)
    (= (distance wp0 printer0) 82)
    (= (distance printer0 wp0) 82)
    (= (distance wp0 printer1) 64)
    (= (distance printer1 wp0) 64)
    (= (distance wp0 printer2) 91)
    (= (distance printer2 wp0) 91)
    (= (distance wp1 wp2) 90)
    (= (distance wp2 wp1) 90)
    (= (distance wp1 wp3) 43)
    (= (distance wp3 wp1) 43)
    (= (distance wp1 wp4) 39)
    (= (distance wp4 wp1) 39)
    (= (distance wp1 printer0) 107)
    (= (distance printer0 wp1) 107)
    (= (distance wp1 printer1) 29)
    (= (distance printer1 wp1) 29)
    (= (distance wp1 printer2) 116)
    (= (distance printer2 wp1) 116)
    (= (distance wp2 wp3) 47)
    (= (distance wp3 wp2) 47)
    (= (distance wp2 wp4) 51)
    (= (distance wp4 wp2) 51)
    (= (distance wp2 printer0) 109)
    (= (distance printer0 wp2) 109)
    (= (distance wp2 printer1) 101)
    (= (distance printer1 wp2) 101)
    (= (distance wp2 printer2) 62)
    (= (distance printer2 wp2) 62)
    (= (distance wp3 wp4) 6)
    (= (distance wp4 wp3) 6)
    (= (distance wp3 printer0) 88)
    (= (distance printer0 wp3) 88)
    (= (distance wp3 printer1) 54)
    (= (distance printer1 wp3) 54)
    (= (distance wp3 printer2) 97)
    (= (distance printer2 wp3) 97)
    (= (distance wp4 printer0) 82)
    (= (distance printer0 wp4) 82)
    (= (distance wp4 printer1) 50)
    (= (distance printer1 wp4) 50)
    (= (distance wp4 printer2) 91)
    (= (distance printer2 wp4) 91)
    (= (distance printer0 printer1) 78)
    (= (distance printer1 printer0) 78)
    (= (distance printer0 printer2) 69)
    (= (distance printer2 printer0) 69)
    (= (distance printer1 printer2) 87)
    (= (distance printer2 printer1) 87)
)
(:goal (and
    (papers_delivered wp0)
    (papers_delivered wp3)
))
)
