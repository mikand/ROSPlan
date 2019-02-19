(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 wp7 wp8 wp9 - waypoint
    robot0 robot1 robot2 - robot
    printer0 printer1 printer2 printer3 - printer
)
(:init
    (robot_at robot0 wp0)
    (robot_at robot1 wp0)
    (robot_at robot2 wp0)

    (undocked robot0)
    (undocked robot1)
    (undocked robot2)


    (localised robot0)
    (localised robot1)
    (localised robot2)

    (dock_at wp0)


    (nocarrying_papers robot0)
    (nocarrying_papers robot1)
    (nocarrying_papers robot2)



    (delivery_destination wp0)
    (at 2113.75 (not (delivery_destination wp0)))
    (delivery_destination wp1)
    (at 2113.75 (not (delivery_destination wp1)))
    (delivery_destination wp2)
    (at 2113.75 (not (delivery_destination wp2)))
    (delivery_destination wp3)
    (at 2113.75 (not (delivery_destination wp3)))
    (delivery_destination wp4)
    (at 2113.75 (not (delivery_destination wp4)))
    (delivery_destination wp5)
    (at 2113.75 (not (delivery_destination wp5)))
    (delivery_destination wp6)
    (at 2113.75 (not (delivery_destination wp6)))
    (delivery_destination wp7)
    (at 2113.75 (not (delivery_destination wp7)))
    (delivery_destination wp8)
    (at 2113.75 (not (delivery_destination wp8)))
    (delivery_destination wp9)
    (at 2113.75 (not (delivery_destination wp9)))

    (= (distance wp0 wp1) 12)
    (= (distance wp1 wp0) 12)
    (= (distance wp0 wp2) 93)
    (= (distance wp2 wp0) 93)
    (= (distance wp0 wp3) 90)
    (= (distance wp3 wp0) 90)
    (= (distance wp0 wp4) 48)
    (= (distance wp4 wp0) 48)
    (= (distance wp0 wp5) 110)
    (= (distance wp5 wp0) 110)
    (= (distance wp0 wp6) 47)
    (= (distance wp6 wp0) 47)
    (= (distance wp0 wp7) 86)
    (= (distance wp7 wp0) 86)
    (= (distance wp0 wp8) 73)
    (= (distance wp8 wp0) 73)
    (= (distance wp0 wp9) 59)
    (= (distance wp9 wp0) 59)
    (= (distance wp0 printer0) 19)
    (= (distance printer0 wp0) 19)
    (= (distance wp0 printer1) 23)
    (= (distance printer1 wp0) 23)
    (= (distance wp0 printer2) 116)
    (= (distance printer2 wp0) 116)
    (= (distance wp0 printer3) 95)
    (= (distance printer3 wp0) 95)
    (= (distance wp1 wp2) 91)
    (= (distance wp2 wp1) 91)
    (= (distance wp1 wp3) 88)
    (= (distance wp3 wp1) 88)
    (= (distance wp1 wp4) 46)
    (= (distance wp4 wp1) 46)
    (= (distance wp1 wp5) 98)
    (= (distance wp5 wp1) 98)
    (= (distance wp1 wp6) 45)
    (= (distance wp6 wp1) 45)
    (= (distance wp1 wp7) 74)
    (= (distance wp7 wp1) 74)
    (= (distance wp1 wp8) 61)
    (= (distance wp8 wp1) 61)
    (= (distance wp1 wp9) 57)
    (= (distance wp9 wp1) 57)
    (= (distance wp1 printer0) 21)
    (= (distance printer0 wp1) 21)
    (= (distance wp1 printer1) 21)
    (= (distance printer1 wp1) 21)
    (= (distance wp1 printer2) 114)
    (= (distance printer2 wp1) 114)
    (= (distance wp1 printer3) 83)
    (= (distance printer3 wp1) 83)
    (= (distance wp2 wp3) 11)
    (= (distance wp3 wp2) 11)
    (= (distance wp2 wp4) 45)
    (= (distance wp4 wp2) 45)
    (= (distance wp2 wp5) 107)
    (= (distance wp5 wp2) 107)
    (= (distance wp2 wp6) 64)
    (= (distance wp6 wp2) 64)
    (= (distance wp2 wp7) 81)
    (= (distance wp7 wp2) 81)
    (= (distance wp2 wp8) 84)
    (= (distance wp8 wp2) 84)
    (= (distance wp2 wp9) 34)
    (= (distance wp9 wp2) 34)
    (= (distance wp2 printer0) 112)
    (= (distance printer0 wp2) 112)
    (= (distance wp2 printer1) 70)
    (= (distance printer1 wp2) 70)
    (= (distance wp2 printer2) 23)
    (= (distance printer2 wp2) 23)
    (= (distance wp2 printer3) 54)
    (= (distance printer3 wp2) 54)
    (= (distance wp3 wp4) 42)
    (= (distance wp4 wp3) 42)
    (= (distance wp3 wp5) 104)
    (= (distance wp5 wp3) 104)
    (= (distance wp3 wp6) 75)
    (= (distance wp6 wp3) 75)
    (= (distance wp3 wp7) 78)
    (= (distance wp7 wp3) 78)
    (= (distance wp3 wp8) 81)
    (= (distance wp8 wp3) 81)
    (= (distance wp3 wp9) 39)
    (= (distance wp9 wp3) 39)
    (= (distance wp3 printer0) 109)
    (= (distance printer0 wp3) 109)
    (= (distance wp3 printer1) 67)
    (= (distance printer1 wp3) 67)
    (= (distance wp3 printer2) 26)
    (= (distance printer2 wp3) 26)
    (= (distance wp3 printer3) 51)
    (= (distance printer3 wp3) 51)
    (= (distance wp4 wp5) 76)
    (= (distance wp5 wp4) 76)
    (= (distance wp4 wp6) 47)
    (= (distance wp6 wp4) 47)
    (= (distance wp4 wp7) 52)
    (= (distance wp7 wp4) 52)
    (= (distance wp4 wp8) 39)
    (= (distance wp8 wp4) 39)
    (= (distance wp4 wp9) 11)
    (= (distance wp9 wp4) 11)
    (= (distance wp4 printer0) 67)
    (= (distance printer0 wp4) 67)
    (= (distance wp4 printer1) 39)
    (= (distance printer1 wp4) 39)
    (= (distance wp4 printer2) 68)
    (= (distance printer2 wp4) 68)
    (= (distance wp4 printer3) 61)
    (= (distance printer3 wp4) 61)
    (= (distance wp5 wp6) 123)
    (= (distance wp6 wp5) 123)
    (= (distance wp5 wp7) 26)
    (= (distance wp7 wp5) 26)
    (= (distance wp5 wp8) 37)
    (= (distance wp8 wp5) 37)
    (= (distance wp5 wp9) 87)
    (= (distance wp9 wp5) 87)
    (= (distance wp5 printer0) 101)
    (= (distance printer0 wp5) 101)
    (= (distance wp5 printer1) 115)
    (= (distance printer1 wp5) 115)
    (= (distance wp5 printer2) 130)
    (= (distance printer2 wp5) 130)
    (= (distance wp5 printer3) 53)
    (= (distance printer3 wp5) 53)
    (= (distance wp6 wp7) 99)
    (= (distance wp7 wp6) 99)
    (= (distance wp6 wp8) 86)
    (= (distance wp8 wp6) 86)
    (= (distance wp6 wp9) 36)
    (= (distance wp9 wp6) 36)
    (= (distance wp6 printer0) 66)
    (= (distance printer0 wp6) 66)
    (= (distance wp6 printer1) 24)
    (= (distance printer1 wp6) 24)
    (= (distance wp6 printer2) 69)
    (= (distance printer2 wp6) 69)
    (= (distance wp6 printer3) 108)
    (= (distance printer3 wp6) 108)
    (= (distance wp7 wp8) 13)
    (= (distance wp8 wp7) 13)
    (= (distance wp7 wp9) 63)
    (= (distance wp9 wp7) 63)
    (= (distance wp7 printer0) 77)
    (= (distance printer0 wp7) 77)
    (= (distance wp7 printer1) 91)
    (= (distance printer1 wp7) 91)
    (= (distance wp7 printer2) 104)
    (= (distance printer2 wp7) 104)
    (= (distance wp7 printer3) 27)
    (= (distance printer3 wp7) 27)
    (= (distance wp8 wp9) 50)
    (= (distance wp9 wp8) 50)
    (= (distance wp8 printer0) 64)
    (= (distance printer0 wp8) 64)
    (= (distance wp8 printer1) 78)
    (= (distance printer1 wp8) 78)
    (= (distance wp8 printer2) 107)
    (= (distance printer2 wp8) 107)
    (= (distance wp8 printer3) 30)
    (= (distance printer3 wp8) 30)
    (= (distance wp9 printer0) 78)
    (= (distance printer0 wp9) 78)
    (= (distance wp9 printer1) 36)
    (= (distance printer1 wp9) 36)
    (= (distance wp9 printer2) 57)
    (= (distance printer2 wp9) 57)
    (= (distance wp9 printer3) 72)
    (= (distance printer3 wp9) 72)
    (= (distance printer0 printer1) 42)
    (= (distance printer1 printer0) 42)
    (= (distance printer0 printer2) 135)
    (= (distance printer2 printer0) 135)
    (= (distance printer0 printer3) 86)
    (= (distance printer3 printer0) 86)
    (= (distance printer1 printer2) 93)
    (= (distance printer2 printer1) 93)
    (= (distance printer1 printer3) 100)
    (= (distance printer3 printer1) 100)
    (= (distance printer2 printer3) 77)
    (= (distance printer3 printer2) 77)

)
(:goal (and
    (papers_delivered wp8)
    (papers_delivered wp8)
    (papers_delivered wp1)
    (papers_delivered wp6)
    (papers_delivered wp1)
    (papers_delivered wp1)
    (papers_delivered wp3)
    (papers_delivered wp3)
))
)
