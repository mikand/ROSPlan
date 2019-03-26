(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp3)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp5)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp2)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 297.51 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 297.51 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 297.51 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 297.51 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 297.51 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 297.51 (not (delivery_destination wp5)))
    (delivery_destination wp6) (at 297.51 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 21)
    (= (distance wp1 wp0) 21)
    (= (distance wp0 wp2) 11)
    (= (distance wp2 wp0) 11)
    (= (distance wp0 wp3) 16)
    (= (distance wp3 wp0) 16)
    (= (distance wp0 wp4) 8)
    (= (distance wp4 wp0) 8)
    (= (distance wp0 wp5) 21)
    (= (distance wp5 wp0) 21)
    (= (distance wp0 wp6) 23)
    (= (distance wp6 wp0) 23)
    (= (distance wp0 printer0) 9)
    (= (distance printer0 wp0) 9)
    (= (distance wp0 printer1) 24)
    (= (distance printer1 wp0) 24)
    (= (distance wp0 printer2) 14)
    (= (distance printer2 wp0) 14)
    (= (distance wp1 wp2) 16)
    (= (distance wp2 wp1) 16)
    (= (distance wp1 wp3) 5)
    (= (distance wp3 wp1) 5)
    (= (distance wp1 wp4) 25)
    (= (distance wp4 wp1) 25)
    (= (distance wp1 wp5) 0)
    (= (distance wp5 wp1) 0)
    (= (distance wp1 wp6) 20)
    (= (distance wp6 wp1) 20)
    (= (distance wp1 printer0) 12)
    (= (distance printer0 wp1) 12)
    (= (distance wp1 printer1) 11)
    (= (distance printer1 wp1) 11)
    (= (distance wp1 printer2) 21)
    (= (distance printer2 wp1) 21)
    (= (distance wp2 wp3) 11)
    (= (distance wp3 wp2) 11)
    (= (distance wp2 wp4) 9)
    (= (distance wp4 wp2) 9)
    (= (distance wp2 wp5) 16)
    (= (distance wp5 wp2) 16)
    (= (distance wp2 wp6) 12)
    (= (distance wp6 wp2) 12)
    (= (distance wp2 printer0) 6)
    (= (distance printer0 wp2) 6)
    (= (distance wp2 printer1) 19)
    (= (distance printer1 wp2) 19)
    (= (distance wp2 printer2) 15)
    (= (distance printer2 wp2) 15)
    (= (distance wp3 wp4) 20)
    (= (distance wp4 wp3) 20)
    (= (distance wp3 wp5) 5)
    (= (distance wp5 wp3) 5)
    (= (distance wp3 wp6) 15)
    (= (distance wp6 wp3) 15)
    (= (distance wp3 printer0) 9)
    (= (distance printer0 wp3) 9)
    (= (distance wp3 printer1) 8)
    (= (distance printer1 wp3) 8)
    (= (distance wp3 printer2) 18)
    (= (distance printer2 wp3) 18)
    (= (distance wp4 wp5) 25)
    (= (distance wp5 wp4) 25)
    (= (distance wp4 wp6) 15)
    (= (distance wp6 wp4) 15)
    (= (distance wp4 printer0) 13)
    (= (distance printer0 wp4) 13)
    (= (distance wp4 printer1) 28)
    (= (distance printer1 wp4) 28)
    (= (distance wp4 printer2) 18)
    (= (distance printer2 wp4) 18)
    (= (distance wp5 wp6) 20)
    (= (distance wp6 wp5) 20)
    (= (distance wp5 printer0) 12)
    (= (distance printer0 wp5) 12)
    (= (distance wp5 printer1) 11)
    (= (distance printer1 wp5) 11)
    (= (distance wp5 printer2) 21)
    (= (distance printer2 wp5) 21)
    (= (distance wp6 printer0) 18)
    (= (distance printer0 wp6) 18)
    (= (distance wp6 printer1) 23)
    (= (distance printer1 wp6) 23)
    (= (distance wp6 printer2) 27)
    (= (distance printer2 wp6) 27)
    (= (distance printer0 printer1) 15)
    (= (distance printer1 printer0) 15)
    (= (distance printer0 printer2) 9)
    (= (distance printer2 printer0) 9)
    (= (distance printer1 printer2) 10)
    (= (distance printer2 printer1) 10)
)
(:goal (and
    (papers_delivered wp3)
    (papers_delivered wp5)
    (papers_delivered wp2)
))
)
