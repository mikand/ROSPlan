(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp1)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp2)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 2100.008 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 2100.008 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 2100.008 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 2100.008 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 2100.008 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 8)
    (= (distance wp1 wp0) 8)
    (= (distance wp0 wp2) 13)
    (= (distance wp2 wp0) 13)
    (= (distance wp0 wp3) 7)
    (= (distance wp3 wp0) 7)
    (= (distance wp0 wp4) 4)
    (= (distance wp4 wp0) 4)
    (= (distance wp0 printer0) 10)
    (= (distance printer0 wp0) 10)
    (= (distance wp0 printer1) 10)
    (= (distance printer1 wp0) 10)
    (= (distance wp0 printer2) 1)
    (= (distance printer2 wp0) 1)
    (= (distance wp1 wp2) 17)
    (= (distance wp2 wp1) 17)
    (= (distance wp1 wp3) 11)
    (= (distance wp3 wp1) 11)
    (= (distance wp1 wp4) 12)
    (= (distance wp4 wp1) 12)
    (= (distance wp1 printer0) 14)
    (= (distance printer0 wp1) 14)
    (= (distance wp1 printer1) 14)
    (= (distance printer1 wp1) 14)
    (= (distance wp1 printer2) 9)
    (= (distance printer2 wp1) 9)
    (= (distance wp2 wp3) 10)
    (= (distance wp3 wp2) 10)
    (= (distance wp2 wp4) 17)
    (= (distance wp4 wp2) 17)
    (= (distance wp2 printer0) 9)
    (= (distance printer0 wp2) 9)
    (= (distance wp2 printer1) 17)
    (= (distance printer1 wp2) 17)
    (= (distance wp2 printer2) 14)
    (= (distance printer2 wp2) 14)
    (= (distance wp3 wp4) 7)
    (= (distance wp4 wp3) 7)
    (= (distance wp3 printer0) 3)
    (= (distance printer0 wp3) 3)
    (= (distance wp3 printer1) 7)
    (= (distance printer1 wp3) 7)
    (= (distance wp3 printer2) 8)
    (= (distance printer2 wp3) 8)
    (= (distance wp4 printer0) 8)
    (= (distance printer0 wp4) 8)
    (= (distance wp4 printer1) 6)
    (= (distance printer1 wp4) 6)
    (= (distance wp4 printer2) 5)
    (= (distance printer2 wp4) 5)
    (= (distance printer0 printer1) 8)
    (= (distance printer1 printer0) 8)
    (= (distance printer0 printer2) 11)
    (= (distance printer2 printer0) 11)
    (= (distance printer1 printer2) 11)
    (= (distance printer2 printer1) 11)
)
(:goal (and
    (papers_delivered wp1)
    (papers_delivered wp2)
    (papers_delivered wp3)
))
)