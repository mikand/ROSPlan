(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 wp7 - waypoint
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
    (delivery_destination wp7)

    (= (distance wp0 wp1) 91)
    (= (distance wp1 wp0) 91)
    (= (distance wp0 wp2) 25)
    (= (distance wp2 wp0) 25)
    (= (distance wp0 wp3) 54)
    (= (distance wp3 wp0) 54)
    (= (distance wp0 wp4) 48)
    (= (distance wp4 wp0) 48)
    (= (distance wp0 wp5) 75)
    (= (distance wp5 wp0) 75)
    (= (distance wp0 wp6) 28)
    (= (distance wp6 wp0) 28)
    (= (distance wp0 wp7) 40)
    (= (distance wp7 wp0) 40)
    (= (distance wp0 printer0) 39)
    (= (distance printer0 wp0) 39)
    (= (distance wp0 printer1) 45)
    (= (distance printer1 wp0) 45)
    (= (distance wp0 printer2) 91)
    (= (distance printer2 wp0) 91)
    (= (distance wp0 printer3) 36)
    (= (distance printer3 wp0) 36)
    (= (distance wp1 wp2) 106)
    (= (distance wp2 wp1) 106)
    (= (distance wp1 wp3) 87)
    (= (distance wp3 wp1) 87)
    (= (distance wp1 wp4) 55)
    (= (distance wp4 wp1) 55)
    (= (distance wp1 wp5) 68)
    (= (distance wp5 wp1) 68)
    (= (distance wp1 wp6) 119)
    (= (distance wp6 wp1) 119)
    (= (distance wp1 wp7) 69)
    (= (distance wp7 wp1) 69)
    (= (distance wp1 printer0) 92)
    (= (distance printer0 wp1) 92)
    (= (distance wp1 printer1) 136)
    (= (distance printer1 wp1) 136)
    (= (distance wp1 printer2) 84)
    (= (distance printer2 wp1) 84)
    (= (distance wp1 printer3) 55)
    (= (distance printer3 wp1) 55)
    (= (distance wp2 wp3) 29)
    (= (distance wp3 wp2) 29)
    (= (distance wp2 wp4) 73)
    (= (distance wp4 wp2) 73)
    (= (distance wp2 wp5) 52)
    (= (distance wp5 wp2) 52)
    (= (distance wp2 wp6) 35)
    (= (distance wp6 wp2) 35)
    (= (distance wp2 wp7) 65)
    (= (distance wp7 wp2) 65)
    (= (distance wp2 printer0) 64)
    (= (distance printer0 wp2) 64)
    (= (distance wp2 printer1) 30)
    (= (distance printer1 wp2) 30)
    (= (distance wp2 printer2) 68)
    (= (distance printer2 wp2) 68)
    (= (distance wp2 printer3) 51)
    (= (distance printer3 wp2) 51)
    (= (distance wp3 wp4) 102)
    (= (distance wp4 wp3) 102)
    (= (distance wp3 wp5) 33)
    (= (distance wp5 wp3) 33)
    (= (distance wp3 wp6) 64)
    (= (distance wp6 wp3) 64)
    (= (distance wp3 wp7) 94)
    (= (distance wp7 wp3) 94)
    (= (distance wp3 printer0) 93)
    (= (distance printer0 wp3) 93)
    (= (distance wp3 printer1) 49)
    (= (distance printer1 wp3) 49)
    (= (distance wp3 printer2) 49)
    (= (distance printer2 wp3) 49)
    (= (distance wp3 printer3) 72)
    (= (distance printer3 wp3) 72)
    (= (distance wp4 wp5) 123)
    (= (distance wp5 wp4) 123)
    (= (distance wp4 wp6) 72)
    (= (distance wp6 wp4) 72)
    (= (distance wp4 wp7) 22)
    (= (distance wp7 wp4) 22)
    (= (distance wp4 printer0) 45)
    (= (distance printer0 wp4) 45)
    (= (distance wp4 printer1) 89)
    (= (distance printer1 wp4) 89)
    (= (distance wp4 printer2) 139)
    (= (distance printer2 wp4) 139)
    (= (distance wp4 printer3) 30)
    (= (distance printer3 wp4) 30)
    (= (distance wp5 wp6) 85)
    (= (distance wp6 wp5) 85)
    (= (distance wp5 wp7) 115)
    (= (distance wp7 wp5) 115)
    (= (distance wp5 printer0) 114)
    (= (distance printer0 wp5) 114)
    (= (distance wp5 printer1) 82)
    (= (distance printer1 wp5) 82)
    (= (distance wp5 printer2) 16)
    (= (distance printer2 wp5) 16)
    (= (distance wp5 printer3) 93)
    (= (distance printer3 wp5) 93)
    (= (distance wp6 wp7) 50)
    (= (distance wp7 wp6) 50)
    (= (distance wp6 printer0) 29)
    (= (distance printer0 wp6) 29)
    (= (distance wp6 printer1) 35)
    (= (distance printer1 wp6) 35)
    (= (distance wp6 printer2) 101)
    (= (distance printer2 wp6) 101)
    (= (distance wp6 printer3) 64)
    (= (distance printer3 wp6) 64)
    (= (distance wp7 printer0) 23)
    (= (distance printer0 wp7) 23)
    (= (distance wp7 printer1) 67)
    (= (distance printer1 wp7) 67)
    (= (distance wp7 printer2) 131)
    (= (distance printer2 wp7) 131)
    (= (distance wp7 printer3) 22)
    (= (distance printer3 wp7) 22)
    (= (distance printer0 printer1) 64)
    (= (distance printer1 printer0) 64)
    (= (distance printer0 printer2) 130)
    (= (distance printer2 printer0) 130)
    (= (distance printer0 printer3) 37)
    (= (distance printer3 printer0) 37)
    (= (distance printer1 printer2) 98)
    (= (distance printer2 printer1) 98)
    (= (distance printer1 printer3) 81)
    (= (distance printer3 printer1) 81)
    (= (distance printer2 printer3) 109)
    (= (distance printer3 printer2) 109)
)
(:goal (and
    (papers_delivered wp6)
))
)
