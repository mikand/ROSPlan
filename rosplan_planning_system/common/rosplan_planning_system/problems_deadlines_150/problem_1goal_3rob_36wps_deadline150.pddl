(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp5)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp4)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp1)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 111.0045 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 111.0045 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 111.0045 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 111.0045 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 111.0045 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 111.0045 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 7)
    (= (distance wp1 wp0) 7)
    (= (distance wp0 wp2) 9)
    (= (distance wp2 wp0) 9)
    (= (distance wp0 wp3) 33)
    (= (distance wp3 wp0) 33)
    (= (distance wp0 wp4) 6)
    (= (distance wp4 wp0) 6)
    (= (distance wp0 wp5) 18)
    (= (distance wp5 wp0) 18)
    (= (distance wp0 printer0) 13)
    (= (distance printer0 wp0) 13)
    (= (distance wp0 printer1) 7)
    (= (distance printer1 wp0) 7)
    (= (distance wp0 printer2) 18)
    (= (distance printer2 wp0) 18)
    (= (distance wp1 wp2) 4)
    (= (distance wp2 wp1) 4)
    (= (distance wp1 wp3) 26)
    (= (distance wp3 wp1) 26)
    (= (distance wp1 wp4) 1)
    (= (distance wp4 wp1) 1)
    (= (distance wp1 wp5) 11)
    (= (distance wp5 wp1) 11)
    (= (distance wp1 printer0) 8)
    (= (distance printer0 wp1) 8)
    (= (distance wp1 printer1) 8)
    (= (distance printer1 wp1) 8)
    (= (distance wp1 printer2) 11)
    (= (distance printer2 wp1) 11)
    (= (distance wp2 wp3) 26)
    (= (distance wp3 wp2) 26)
    (= (distance wp2 wp4) 3)
    (= (distance wp4 wp2) 3)
    (= (distance wp2 wp5) 11)
    (= (distance wp5 wp2) 11)
    (= (distance wp2 printer0) 4)
    (= (distance printer0 wp2) 4)
    (= (distance wp2 printer1) 12)
    (= (distance printer1 wp2) 12)
    (= (distance wp2 printer2) 11)
    (= (distance printer2 wp2) 11)
    (= (distance wp3 wp4) 27)
    (= (distance wp4 wp3) 27)
    (= (distance wp3 wp5) 15)
    (= (distance wp5 wp3) 15)
    (= (distance wp3 printer0) 24)
    (= (distance printer0 wp3) 24)
    (= (distance wp3 printer1) 26)
    (= (distance printer1 wp3) 26)
    (= (distance wp3 printer2) 15)
    (= (distance printer2 wp3) 15)
    (= (distance wp4 wp5) 12)
    (= (distance wp5 wp4) 12)
    (= (distance wp4 printer0) 7)
    (= (distance printer0 wp4) 7)
    (= (distance wp4 printer1) 9)
    (= (distance printer1 wp4) 9)
    (= (distance wp4 printer2) 12)
    (= (distance printer2 wp4) 12)
    (= (distance wp5 printer0) 15)
    (= (distance printer0 wp5) 15)
    (= (distance wp5 printer1) 11)
    (= (distance printer1 wp5) 11)
    (= (distance wp5 printer2) 14)
    (= (distance printer2 wp5) 14)
    (= (distance printer0 printer1) 16)
    (= (distance printer1 printer0) 16)
    (= (distance printer0 printer2) 9)
    (= (distance printer2 printer0) 9)
    (= (distance printer1 printer2) 15)
    (= (distance printer2 printer1) 15)
)
(:goal (and
    (papers_delivered wp5)
))
)
