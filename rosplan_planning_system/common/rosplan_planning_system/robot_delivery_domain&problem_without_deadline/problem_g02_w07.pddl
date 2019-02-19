(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
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
    (delivery_destination wp5)
    (delivery_destination wp6)

    (= (distance wp0 wp1) 134)
    (= (distance wp1 wp0) 134)
    (= (distance wp0 wp2) 10)
    (= (distance wp2 wp0) 10)
    (= (distance wp0 wp3) 84)
    (= (distance wp3 wp0) 84)
    (= (distance wp0 wp4) 86)
    (= (distance wp4 wp0) 86)
    (= (distance wp0 wp5) 112)
    (= (distance wp5 wp0) 112)
    (= (distance wp0 wp6) 60)
    (= (distance wp6 wp0) 60)
    (= (distance wp0 printer0) 99)
    (= (distance printer0 wp0) 99)
    (= (distance wp0 printer1) 77)
    (= (distance printer1 wp0) 77)
    (= (distance wp0 printer2) 113)
    (= (distance printer2 wp0) 113)
    (= (distance wp0 printer3) 107)
    (= (distance printer3 wp0) 107)
    (= (distance wp1 wp2) 144)
    (= (distance wp2 wp1) 144)
    (= (distance wp1 wp3) 84)
    (= (distance wp3 wp1) 84)
    (= (distance wp1 wp4) 68)
    (= (distance wp4 wp1) 68)
    (= (distance wp1 wp5) 22)
    (= (distance wp5 wp1) 22)
    (= (distance wp1 wp6) 74)
    (= (distance wp6 wp1) 74)
    (= (distance wp1 printer0) 81)
    (= (distance printer0 wp1) 81)
    (= (distance wp1 printer1) 57)
    (= (distance printer1 wp1) 57)
    (= (distance wp1 printer2) 95)
    (= (distance printer2 wp1) 95)
    (= (distance wp1 printer3) 35)
    (= (distance printer3 wp1) 35)
    (= (distance wp2 wp3) 88)
    (= (distance wp3 wp2) 88)
    (= (distance wp2 wp4) 90)
    (= (distance wp4 wp2) 90)
    (= (distance wp2 wp5) 122)
    (= (distance wp5 wp2) 122)
    (= (distance wp2 wp6) 70)
    (= (distance wp6 wp2) 70)
    (= (distance wp2 printer0) 103)
    (= (distance printer0 wp2) 103)
    (= (distance wp2 printer1) 87)
    (= (distance printer1 wp2) 87)
    (= (distance wp2 printer2) 117)
    (= (distance printer2 wp2) 117)
    (= (distance wp2 printer3) 117)
    (= (distance printer3 wp2) 117)
    (= (distance wp3 wp4) 18)
    (= (distance wp4 wp3) 18)
    (= (distance wp3 wp5) 62)
    (= (distance wp5 wp3) 62)
    (= (distance wp3 wp6) 92)
    (= (distance wp6 wp3) 92)
    (= (distance wp3 printer0) 15)
    (= (distance printer0 wp3) 15)
    (= (distance wp3 printer1) 73)
    (= (distance printer1 wp3) 73)
    (= (distance wp3 printer2) 29)
    (= (distance printer2 wp3) 29)
    (= (distance wp3 printer3) 57)
    (= (distance printer3 wp3) 57)
    (= (distance wp4 wp5) 46)
    (= (distance wp5 wp4) 46)
    (= (distance wp4 wp6) 94)
    (= (distance wp6 wp4) 94)
    (= (distance wp4 printer0) 15)
    (= (distance printer0 wp4) 15)
    (= (distance wp4 printer1) 75)
    (= (distance printer1 wp4) 75)
    (= (distance wp4 printer2) 27)
    (= (distance printer2 wp4) 27)
    (= (distance wp4 printer3) 39)
    (= (distance printer3 wp4) 39)
    (= (distance wp5 wp6) 52)
    (= (distance wp6 wp5) 52)
    (= (distance wp5 printer0) 59)
    (= (distance printer0 wp5) 59)
    (= (distance wp5 printer1) 35)
    (= (distance printer1 wp5) 35)
    (= (distance wp5 printer2) 73)
    (= (distance printer2 wp5) 73)
    (= (distance wp5 printer3) 13)
    (= (distance printer3 wp5) 13)
    (= (distance wp6 printer0) 107)
    (= (distance printer0 wp6) 107)
    (= (distance wp6 printer1) 19)
    (= (distance printer1 wp6) 19)
    (= (distance wp6 printer2) 121)
    (= (distance printer2 wp6) 121)
    (= (distance wp6 printer3) 61)
    (= (distance printer3 wp6) 61)
    (= (distance printer0 printer1) 88)
    (= (distance printer1 printer0) 88)
    (= (distance printer0 printer2) 14)
    (= (distance printer2 printer0) 14)
    (= (distance printer0 printer3) 54)
    (= (distance printer3 printer0) 54)
    (= (distance printer1 printer2) 102)
    (= (distance printer2 printer1) 102)
    (= (distance printer1 printer3) 42)
    (= (distance printer3 printer1) 42)
    (= (distance printer2 printer3) 60)
    (= (distance printer3 printer2) 60)
)
(:goal (and
    (papers_delivered wp6)
    (papers_delivered wp6)
))
)
