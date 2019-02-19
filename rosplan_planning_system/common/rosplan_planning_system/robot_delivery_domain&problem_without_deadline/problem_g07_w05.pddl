(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 printer2 printer3 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp0)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp0)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0)
    (delivery_destination wp1)
    (delivery_destination wp2)
    (delivery_destination wp3)
    (delivery_destination wp4)

    (= (distance wp0 wp1) 55)
    (= (distance wp1 wp0) 55)
    (= (distance wp0 wp2) 115)
    (= (distance wp2 wp0) 115)
    (= (distance wp0 wp3) 93)
    (= (distance wp3 wp0) 93)
    (= (distance wp0 wp4) 134)
    (= (distance wp4 wp0) 134)
    (= (distance wp0 printer0) 42)
    (= (distance printer0 wp0) 42)
    (= (distance wp0 printer1) 7)
    (= (distance printer1 wp0) 7)
    (= (distance wp0 printer2) 105)
    (= (distance printer2 wp0) 105)
    (= (distance wp0 printer3) 66)
    (= (distance printer3 wp0) 66)
    (= (distance wp1 wp2) 102)
    (= (distance wp2 wp1) 102)
    (= (distance wp1 wp3) 118)
    (= (distance wp3 wp1) 118)
    (= (distance wp1 wp4) 91)
    (= (distance wp4 wp1) 91)
    (= (distance wp1 printer0) 67)
    (= (distance printer0 wp1) 67)
    (= (distance wp1 printer1) 48)
    (= (distance printer1 wp1) 48)
    (= (distance wp1 printer2) 92)
    (= (distance printer2 wp1) 92)
    (= (distance wp1 printer3) 91)
    (= (distance printer3 wp1) 91)
    (= (distance wp2 wp3) 122)
    (= (distance wp3 wp2) 122)
    (= (distance wp2 wp4) 19)
    (= (distance wp4 wp2) 19)
    (= (distance wp2 printer0) 73)
    (= (distance printer0 wp2) 73)
    (= (distance wp2 printer1) 108)
    (= (distance printer1 wp2) 108)
    (= (distance wp2 printer2) 10)
    (= (distance printer2 wp2) 10)
    (= (distance wp2 printer3) 63)
    (= (distance printer3 wp2) 63)
    (= (distance wp3 wp4) 141)
    (= (distance wp4 wp3) 141)
    (= (distance wp3 printer0) 51)
    (= (distance printer0 wp3) 51)
    (= (distance wp3 printer1) 98)
    (= (distance printer1 wp3) 98)
    (= (distance wp3 printer2) 112)
    (= (distance printer2 wp3) 112)
    (= (distance wp3 printer3) 59)
    (= (distance printer3 wp3) 59)
    (= (distance wp4 printer0) 92)
    (= (distance printer0 wp4) 92)
    (= (distance wp4 printer1) 127)
    (= (distance printer1 wp4) 127)
    (= (distance wp4 printer2) 29)
    (= (distance printer2 wp4) 29)
    (= (distance wp4 printer3) 82)
    (= (distance printer3 wp4) 82)
    (= (distance printer0 printer1) 47)
    (= (distance printer1 printer0) 47)
    (= (distance printer0 printer2) 63)
    (= (distance printer2 printer0) 63)
    (= (distance printer0 printer3) 24)
    (= (distance printer3 printer0) 24)
    (= (distance printer1 printer2) 98)
    (= (distance printer2 printer1) 98)
    (= (distance printer1 printer3) 71)
    (= (distance printer3 printer1) 71)
    (= (distance printer2 printer3) 53)
    (= (distance printer3 printer2) 53)
)
(:goal (and
    (papers_delivered wp0)
    (papers_delivered wp1)
    (papers_delivered wp0)
    (papers_delivered wp0)
    (papers_delivered wp4)
    (papers_delivered wp2)
    (papers_delivered wp1)
))
)
