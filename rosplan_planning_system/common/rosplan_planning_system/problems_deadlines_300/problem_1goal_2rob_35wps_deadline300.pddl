(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp3)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp4)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 1170.006 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 1170.006 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 1170.006 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 1170.006 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 1170.006 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 7)
    (= (distance wp1 wp0) 7)
    (= (distance wp0 wp2) 9)
    (= (distance wp2 wp0) 9)
    (= (distance wp0 wp3) 16)
    (= (distance wp3 wp0) 16)
    (= (distance wp0 wp4) 11)
    (= (distance wp4 wp0) 11)
    (= (distance wp0 printer0) 7)
    (= (distance printer0 wp0) 7)
    (= (distance wp0 printer1) 12)
    (= (distance printer1 wp0) 12)
    (= (distance wp0 printer2) 6)
    (= (distance printer2 wp0) 6)
    (= (distance wp1 wp2) 16)
    (= (distance wp2 wp1) 16)
    (= (distance wp1 wp3) 23)
    (= (distance wp3 wp1) 23)
    (= (distance wp1 wp4) 4)
    (= (distance wp4 wp1) 4)
    (= (distance wp1 printer0) 14)
    (= (distance printer0 wp1) 14)
    (= (distance wp1 printer1) 5)
    (= (distance printer1 wp1) 5)
    (= (distance wp1 printer2) 13)
    (= (distance printer2 wp1) 13)
    (= (distance wp2 wp3) 7)
    (= (distance wp3 wp2) 7)
    (= (distance wp2 wp4) 18)
    (= (distance wp4 wp2) 18)
    (= (distance wp2 printer0) 2)
    (= (distance printer0 wp2) 2)
    (= (distance wp2 printer1) 15)
    (= (distance printer1 wp2) 15)
    (= (distance wp2 printer2) 5)
    (= (distance printer2 wp2) 5)
    (= (distance wp3 wp4) 25)
    (= (distance wp4 wp3) 25)
    (= (distance wp3 printer0) 9)
    (= (distance printer0 wp3) 9)
    (= (distance wp3 printer1) 22)
    (= (distance printer1 wp3) 22)
    (= (distance wp3 printer2) 10)
    (= (distance printer2 wp3) 10)
    (= (distance wp4 printer0) 16)
    (= (distance printer0 wp4) 16)
    (= (distance wp4 printer1) 3)
    (= (distance printer1 wp4) 3)
    (= (distance wp4 printer2) 15)
    (= (distance printer2 wp4) 15)
    (= (distance printer0 printer1) 13)
    (= (distance printer1 printer0) 13)
    (= (distance printer0 printer2) 3)
    (= (distance printer2 printer0) 3)
    (= (distance printer1 printer2) 12)
    (= (distance printer2 printer1) 12)
)
(:goal (and
    (papers_delivered wp3)
))
)