(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp5)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp1)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp6)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 2010.006 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 2010.006 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 2010.006 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 2010.006 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 2010.006 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 2010.006 (not (delivery_destination wp5)))
    (delivery_destination wp6) (at 2010.006 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 85)
    (= (distance wp1 wp0) 85)
    (= (distance wp0 wp2) 70)
    (= (distance wp2 wp0) 70)
    (= (distance wp0 wp3) 21)
    (= (distance wp3 wp0) 21)
    (= (distance wp0 wp4) 65)
    (= (distance wp4 wp0) 65)
    (= (distance wp0 wp5) 39)
    (= (distance wp5 wp0) 39)
    (= (distance wp0 wp6) 50)
    (= (distance wp6 wp0) 50)
    (= (distance wp0 printer0) 63)
    (= (distance printer0 wp0) 63)
    (= (distance wp0 printer1) 74)
    (= (distance printer1 wp0) 74)
    (= (distance wp0 printer2) 46)
    (= (distance printer2 wp0) 46)
    (= (distance wp1 wp2) 155)
    (= (distance wp2 wp1) 155)
    (= (distance wp1 wp3) 74)
    (= (distance wp3 wp1) 74)
    (= (distance wp1 wp4) 108)
    (= (distance wp4 wp1) 108)
    (= (distance wp1 wp5) 92)
    (= (distance wp5 wp1) 92)
    (= (distance wp1 wp6) 103)
    (= (distance wp6 wp1) 103)
    (= (distance wp1 printer0) 22)
    (= (distance printer0 wp1) 22)
    (= (distance wp1 printer1) 99)
    (= (distance printer1 wp1) 99)
    (= (distance wp1 printer2) 97)
    (= (distance printer2 wp1) 97)
    (= (distance wp2 wp3) 81)
    (= (distance wp3 wp2) 81)
    (= (distance wp2 wp4) 49)
    (= (distance wp4 wp2) 49)
    (= (distance wp2 wp5) 63)
    (= (distance wp5 wp2) 63)
    (= (distance wp2 wp6) 52)
    (= (distance wp6 wp2) 52)
    (= (distance wp2 printer0) 133)
    (= (distance printer0 wp2) 133)
    (= (distance wp2 printer1) 58)
    (= (distance printer1 wp2) 58)
    (= (distance wp2 printer2) 62)
    (= (distance printer2 wp2) 62)
    (= (distance wp3 wp4) 86)
    (= (distance wp4 wp3) 86)
    (= (distance wp3 wp5) 60)
    (= (distance wp5 wp3) 60)
    (= (distance wp3 wp6) 71)
    (= (distance wp6 wp3) 71)
    (= (distance wp3 printer0) 52)
    (= (distance printer0 wp3) 52)
    (= (distance wp3 printer1) 95)
    (= (distance printer1 wp3) 95)
    (= (distance wp3 printer2) 25)
    (= (distance printer2 wp3) 25)
    (= (distance wp4 wp5) 26)
    (= (distance wp5 wp4) 26)
    (= (distance wp4 wp6) 15)
    (= (distance wp6 wp4) 15)
    (= (distance wp4 printer0) 86)
    (= (distance printer0 wp4) 86)
    (= (distance wp4 printer1) 9)
    (= (distance printer1 wp4) 9)
    (= (distance wp4 printer2) 111)
    (= (distance printer2 wp4) 111)
    (= (distance wp5 wp6) 11)
    (= (distance wp6 wp5) 11)
    (= (distance wp5 printer0) 70)
    (= (distance printer0 wp5) 70)
    (= (distance wp5 printer1) 35)
    (= (distance printer1 wp5) 35)
    (= (distance wp5 printer2) 85)
    (= (distance printer2 wp5) 85)
    (= (distance wp6 printer0) 81)
    (= (distance printer0 wp6) 81)
    (= (distance wp6 printer1) 24)
    (= (distance printer1 wp6) 24)
    (= (distance wp6 printer2) 96)
    (= (distance printer2 wp6) 96)
    (= (distance printer0 printer1) 77)
    (= (distance printer1 printer0) 77)
    (= (distance printer0 printer2) 75)
    (= (distance printer2 printer0) 75)
    (= (distance printer1 printer2) 120)
    (= (distance printer2 printer1) 120)
)
(:goal (and
    (papers_delivered wp5)
    (papers_delivered wp1)
    (papers_delivered wp6)
))
)
