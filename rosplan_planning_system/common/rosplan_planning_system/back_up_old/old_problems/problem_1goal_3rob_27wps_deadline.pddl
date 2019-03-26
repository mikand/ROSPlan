(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp1)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp3)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp2)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 427.503 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 427.503 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 427.503 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 427.503 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 427.503 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 427.503 (not (delivery_destination wp5)))
    (delivery_destination wp6) (at 427.503 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 86)
    (= (distance wp1 wp0) 86)
    (= (distance wp0 wp2) 51)
    (= (distance wp2 wp0) 51)
    (= (distance wp0 wp3) 103)
    (= (distance wp3 wp0) 103)
    (= (distance wp0 wp4) 31)
    (= (distance wp4 wp0) 31)
    (= (distance wp0 wp5) 122)
    (= (distance wp5 wp0) 122)
    (= (distance wp0 wp6) 93)
    (= (distance wp6 wp0) 93)
    (= (distance wp0 printer0) 60)
    (= (distance printer0 wp0) 60)
    (= (distance wp0 printer1) 61)
    (= (distance printer1 wp0) 61)
    (= (distance wp1 wp2) 45)
    (= (distance wp2 wp1) 45)
    (= (distance wp1 wp3) 27)
    (= (distance wp3 wp1) 27)
    (= (distance wp1 wp4) 55)
    (= (distance wp4 wp1) 55)
    (= (distance wp1 wp5) 36)
    (= (distance wp5 wp1) 36)
    (= (distance wp1 wp6) 17)
    (= (distance wp6 wp1) 17)
    (= (distance wp1 printer0) 48)
    (= (distance printer0 wp1) 48)
    (= (distance wp1 printer1) 25)
    (= (distance printer1 wp1) 25)
    (= (distance wp2 wp3) 62)
    (= (distance wp3 wp2) 62)
    (= (distance wp2 wp4) 32)
    (= (distance wp4 wp2) 32)
    (= (distance wp2 wp5) 81)
    (= (distance wp5 wp2) 81)
    (= (distance wp2 wp6) 52)
    (= (distance wp6 wp2) 52)
    (= (distance wp2 printer0) 9)
    (= (distance printer0 wp2) 9)
    (= (distance wp2 printer1) 20)
    (= (distance printer1 wp2) 20)
    (= (distance wp3 wp4) 72)
    (= (distance wp4 wp3) 72)
    (= (distance wp3 wp5) 19)
    (= (distance wp5 wp3) 19)
    (= (distance wp3 wp6) 44)
    (= (distance wp6 wp3) 44)
    (= (distance wp3 printer0) 65)
    (= (distance printer0 wp3) 65)
    (= (distance wp3 printer1) 42)
    (= (distance printer1 wp3) 42)
    (= (distance wp4 wp5) 91)
    (= (distance wp5 wp4) 91)
    (= (distance wp4 wp6) 62)
    (= (distance wp6 wp4) 62)
    (= (distance wp4 printer0) 41)
    (= (distance printer0 wp4) 41)
    (= (distance wp4 printer1) 30)
    (= (distance printer1 wp4) 30)
    (= (distance wp5 wp6) 45)
    (= (distance wp6 wp5) 45)
    (= (distance wp5 printer0) 84)
    (= (distance printer0 wp5) 84)
    (= (distance wp5 printer1) 61)
    (= (distance printer1 wp5) 61)
    (= (distance wp6 printer0) 55)
    (= (distance printer0 wp6) 55)
    (= (distance wp6 printer1) 32)
    (= (distance printer1 wp6) 32)
    (= (distance printer0 printer1) 23)
    (= (distance printer1 printer0) 23)
)
(:goal (and
    (papers_delivered wp1)
))
)
