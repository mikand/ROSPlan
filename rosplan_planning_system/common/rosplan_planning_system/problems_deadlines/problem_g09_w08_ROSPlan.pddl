(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 wp7 wp8 - waypoint
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
    (at 1791.75 (not (delivery_destination wp0)))
    (delivery_destination wp1)
    (at 1791.75 (not (delivery_destination wp1)))
    (delivery_destination wp2)
    (at 1791.75 (not (delivery_destination wp2)))
    (delivery_destination wp3)
    (at 1791.75 (not (delivery_destination wp3)))
    (delivery_destination wp4)
    (at 1791.75 (not (delivery_destination wp4)))
    (delivery_destination wp5)
    (at 1791.75 (not (delivery_destination wp5)))
    (delivery_destination wp6)
    (at 1791.75 (not (delivery_destination wp6)))
    (delivery_destination wp7)
    (at 1791.75 (not (delivery_destination wp7)))
    (delivery_destination wp8)
    (at 1791.75 (not (delivery_destination wp8)))

    (= (distance wp0 wp1) 67)
    (= (distance wp1 wp0) 67)
    (= (distance wp0 wp2) 80)
    (= (distance wp2 wp0) 80)
    (= (distance wp0 wp3) 40)
    (= (distance wp3 wp0) 40)
    (= (distance wp0 wp4) 43)
    (= (distance wp4 wp0) 43)
    (= (distance wp0 wp5) 49)
    (= (distance wp5 wp0) 49)
    (= (distance wp0 wp6) 25)
    (= (distance wp6 wp0) 25)
    (= (distance wp0 wp7) 57)
    (= (distance wp7 wp0) 57)
    (= (distance wp0 wp8) 41)
    (= (distance wp8 wp0) 41)
    (= (distance wp0 printer0) 28)
    (= (distance printer0 wp0) 28)
    (= (distance wp0 printer1) 115)
    (= (distance printer1 wp0) 115)
    (= (distance wp0 printer2) 31)
    (= (distance printer2 wp0) 31)
    (= (distance wp0 printer3) 66)
    (= (distance printer3 wp0) 66)
    (= (distance wp1 wp2) 13)
    (= (distance wp2 wp1) 13)
    (= (distance wp1 wp3) 107)
    (= (distance wp3 wp1) 107)
    (= (distance wp1 wp4) 54)
    (= (distance wp4 wp1) 54)
    (= (distance wp1 wp5) 76)
    (= (distance wp5 wp1) 76)
    (= (distance wp1 wp6) 52)
    (= (distance wp6 wp1) 52)
    (= (distance wp1 wp7) 26)
    (= (distance wp7 wp1) 26)
    (= (distance wp1 wp8) 90)
    (= (distance wp8 wp1) 90)
    (= (distance wp1 printer0) 39)
    (= (distance printer0 wp1) 39)
    (= (distance wp1 printer1) 48)
    (= (distance printer1 wp1) 48)
    (= (distance wp1 printer2) 98)
    (= (distance printer2 wp1) 98)
    (= (distance wp1 printer3) 93)
    (= (distance printer3 wp1) 93)
    (= (distance wp2 wp3) 120)
    (= (distance wp3 wp2) 120)
    (= (distance wp2 wp4) 67)
    (= (distance wp4 wp2) 67)
    (= (distance wp2 wp5) 65)
    (= (distance wp5 wp2) 65)
    (= (distance wp2 wp6) 57)
    (= (distance wp6 wp2) 57)
    (= (distance wp2 wp7) 23)
    (= (distance wp7 wp2) 23)
    (= (distance wp2 wp8) 103)
    (= (distance wp8 wp2) 103)
    (= (distance wp2 printer0) 52)
    (= (distance printer0 wp2) 52)
    (= (distance wp2 printer1) 37)
    (= (distance printer1 wp2) 37)
    (= (distance wp2 printer2) 111)
    (= (distance printer2 wp2) 111)
    (= (distance wp2 printer3) 82)
    (= (distance printer3 wp2) 82)
    (= (distance wp3 wp4) 53)
    (= (distance wp4 wp3) 53)
    (= (distance wp3 wp5) 81)
    (= (distance wp5 wp3) 81)
    (= (distance wp3 wp6) 63)
    (= (distance wp6 wp3) 63)
    (= (distance wp3 wp7) 97)
    (= (distance wp7 wp3) 97)
    (= (distance wp3 wp8) 43)
    (= (distance wp8 wp3) 43)
    (= (distance wp3 printer0) 68)
    (= (distance printer0 wp3) 68)
    (= (distance wp3 printer1) 155)
    (= (distance printer1 wp3) 155)
    (= (distance wp3 printer2) 13)
    (= (distance printer2 wp3) 13)
    (= (distance wp3 printer3) 106)
    (= (distance printer3 wp3) 106)
    (= (distance wp4 wp5) 92)
    (= (distance wp5 wp4) 92)
    (= (distance wp4 wp6) 68)
    (= (distance wp6 wp4) 68)
    (= (distance wp4 wp7) 44)
    (= (distance wp7 wp4) 44)
    (= (distance wp4 wp8) 84)
    (= (distance wp8 wp4) 84)
    (= (distance wp4 printer0) 55)
    (= (distance printer0 wp4) 55)
    (= (distance wp4 printer1) 102)
    (= (distance printer1 wp4) 102)
    (= (distance wp4 printer2) 44)
    (= (distance printer2 wp4) 44)
    (= (distance wp4 printer3) 109)
    (= (distance printer3 wp4) 109)
    (= (distance wp5 wp6) 24)
    (= (distance wp6 wp5) 24)
    (= (distance wp5 wp7) 50)
    (= (distance wp7 wp5) 50)
    (= (distance wp5 wp8) 64)
    (= (distance wp8 wp5) 64)
    (= (distance wp5 printer0) 37)
    (= (distance printer0 wp5) 37)
    (= (distance wp5 printer1) 74)
    (= (distance printer1 wp5) 74)
    (= (distance wp5 printer2) 72)
    (= (distance printer2 wp5) 72)
    (= (distance wp5 printer3) 25)
    (= (distance printer3 wp5) 25)
    (= (distance wp6 wp7) 34)
    (= (distance wp7 wp6) 34)
    (= (distance wp6 wp8) 46)
    (= (distance wp8 wp6) 46)
    (= (distance wp6 printer0) 13)
    (= (distance printer0 wp6) 13)
    (= (distance wp6 printer1) 92)
    (= (distance printer1 wp6) 92)
    (= (distance wp6 printer2) 54)
    (= (distance printer2 wp6) 54)
    (= (distance wp6 printer3) 43)
    (= (distance printer3 wp6) 43)
    (= (distance wp7 wp8) 80)
    (= (distance wp8 wp7) 80)
    (= (distance wp7 printer0) 29)
    (= (distance printer0 wp7) 29)
    (= (distance wp7 printer1) 58)
    (= (distance printer1 wp7) 58)
    (= (distance wp7 printer2) 88)
    (= (distance printer2 wp7) 88)
    (= (distance wp7 printer3) 67)
    (= (distance printer3 wp7) 67)
    (= (distance wp8 printer0) 51)
    (= (distance printer0 wp8) 51)
    (= (distance wp8 printer1) 138)
    (= (distance printer1 wp8) 138)
    (= (distance wp8 printer2) 56)
    (= (distance printer2 wp8) 56)
    (= (distance wp8 printer3) 89)
    (= (distance printer3 wp8) 89)
    (= (distance printer0 printer1) 87)
    (= (distance printer1 printer0) 87)
    (= (distance printer0 printer2) 59)
    (= (distance printer2 printer0) 59)
    (= (distance printer0 printer3) 54)
    (= (distance printer3 printer0) 54)
    (= (distance printer1 printer2) 146)
    (= (distance printer2 printer1) 146)
    (= (distance printer1 printer3) 49)
    (= (distance printer3 printer1) 49)
    (= (distance printer2 printer3) 97)
    (= (distance printer3 printer2) 97)

)
(:goal (and
    (papers_delivered wp4)
    (papers_delivered wp6)
    (papers_delivered wp2)
    (papers_delivered wp4)
    (papers_delivered wp1)
    (papers_delivered wp2)
    (papers_delivered wp8)
    (papers_delivered wp2)
    (papers_delivered wp1)
))
)
