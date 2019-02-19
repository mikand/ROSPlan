(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 wp7 - waypoint
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
    (at 1602.0 (not (delivery_destination wp0)))
    (delivery_destination wp1)
    (at 1602.0 (not (delivery_destination wp1)))
    (delivery_destination wp2)
    (at 1602.0 (not (delivery_destination wp2)))
    (delivery_destination wp3)
    (at 1602.0 (not (delivery_destination wp3)))
    (delivery_destination wp4)
    (at 1602.0 (not (delivery_destination wp4)))
    (delivery_destination wp5)
    (at 1602.0 (not (delivery_destination wp5)))
    (delivery_destination wp6)
    (at 1602.0 (not (delivery_destination wp6)))
    (delivery_destination wp7)
    (at 1602.0 (not (delivery_destination wp7)))

    (= (distance wp0 wp1) 44)
    (= (distance wp1 wp0) 44)
    (= (distance wp0 wp2) 75)
    (= (distance wp2 wp0) 75)
    (= (distance wp0 wp3) 72)
    (= (distance wp3 wp0) 72)
    (= (distance wp0 wp4) 69)
    (= (distance wp4 wp0) 69)
    (= (distance wp0 wp5) 26)
    (= (distance wp5 wp0) 26)
    (= (distance wp0 wp6) 76)
    (= (distance wp6 wp0) 76)
    (= (distance wp0 wp7) 53)
    (= (distance wp7 wp0) 53)
    (= (distance wp0 printer0) 104)
    (= (distance printer0 wp0) 104)
    (= (distance wp0 printer1) 53)
    (= (distance printer1 wp0) 53)
    (= (distance wp0 printer2) 76)
    (= (distance printer2 wp0) 76)
    (= (distance wp0 printer3) 22)
    (= (distance printer3 wp0) 22)
    (= (distance wp1 wp2) 49)
    (= (distance wp2 wp1) 49)
    (= (distance wp1 wp3) 98)
    (= (distance wp3 wp1) 98)
    (= (distance wp1 wp4) 25)
    (= (distance wp4 wp1) 25)
    (= (distance wp1 wp5) 68)
    (= (distance wp5 wp1) 68)
    (= (distance wp1 wp6) 50)
    (= (distance wp6 wp1) 50)
    (= (distance wp1 wp7) 9)
    (= (distance wp7 wp1) 9)
    (= (distance wp1 printer0) 60)
    (= (distance printer0 wp1) 60)
    (= (distance wp1 printer1) 75)
    (= (distance printer1 wp1) 75)
    (= (distance wp1 printer2) 102)
    (= (distance printer2 wp1) 102)
    (= (distance wp1 printer3) 26)
    (= (distance printer3 wp1) 26)
    (= (distance wp2 wp3) 147)
    (= (distance wp3 wp2) 147)
    (= (distance wp2 wp4) 48)
    (= (distance wp4 wp2) 48)
    (= (distance wp2 wp5) 49)
    (= (distance wp5 wp2) 49)
    (= (distance wp2 wp6) 17)
    (= (distance wp6 wp2) 17)
    (= (distance wp2 wp7) 46)
    (= (distance wp7 wp2) 46)
    (= (distance wp2 printer0) 87)
    (= (distance printer0 wp2) 87)
    (= (distance wp2 printer1) 124)
    (= (distance printer1 wp2) 124)
    (= (distance wp2 printer2) 151)
    (= (distance printer2 wp2) 151)
    (= (distance wp2 printer3) 75)
    (= (distance printer3 wp2) 75)
    (= (distance wp3 wp4) 117)
    (= (distance wp4 wp3) 117)
    (= (distance wp3 wp5) 98)
    (= (distance wp5 wp3) 98)
    (= (distance wp3 wp6) 148)
    (= (distance wp6 wp3) 148)
    (= (distance wp3 wp7) 101)
    (= (distance wp7 wp3) 101)
    (= (distance wp3 printer0) 108)
    (= (distance printer0 wp3) 108)
    (= (distance wp3 printer1) 57)
    (= (distance printer1 wp3) 57)
    (= (distance wp3 printer2) 48)
    (= (distance printer2 wp3) 48)
    (= (distance wp3 printer3) 72)
    (= (distance printer3 wp3) 72)
    (= (distance wp4 wp5) 93)
    (= (distance wp5 wp4) 93)
    (= (distance wp4 wp6) 31)
    (= (distance wp6 wp4) 31)
    (= (distance wp4 wp7) 16)
    (= (distance wp7 wp4) 16)
    (= (distance wp4 printer0) 57)
    (= (distance printer0 wp4) 57)
    (= (distance wp4 printer1) 94)
    (= (distance printer1 wp4) 94)
    (= (distance wp4 printer2) 121)
    (= (distance printer2 wp4) 121)
    (= (distance wp4 printer3) 47)
    (= (distance printer3 wp4) 47)
    (= (distance wp5 wp6) 62)
    (= (distance wp6 wp5) 62)
    (= (distance wp5 wp7) 77)
    (= (distance wp7 wp5) 77)
    (= (distance wp5 printer0) 128)
    (= (distance printer0 wp5) 128)
    (= (distance wp5 printer1) 77)
    (= (distance printer1 wp5) 77)
    (= (distance wp5 printer2) 102)
    (= (distance printer2 wp5) 102)
    (= (distance wp5 printer3) 46)
    (= (distance printer3 wp5) 46)
    (= (distance wp6 wp7) 47)
    (= (distance wp7 wp6) 47)
    (= (distance wp6 printer0) 88)
    (= (distance printer0 wp6) 88)
    (= (distance wp6 printer1) 125)
    (= (distance printer1 wp6) 125)
    (= (distance wp6 printer2) 152)
    (= (distance printer2 wp6) 152)
    (= (distance wp6 printer3) 76)
    (= (distance printer3 wp6) 76)
    (= (distance wp7 printer0) 51)
    (= (distance printer0 wp7) 51)
    (= (distance wp7 printer1) 78)
    (= (distance printer1 wp7) 78)
    (= (distance wp7 printer2) 105)
    (= (distance printer2 wp7) 105)
    (= (distance wp7 printer3) 31)
    (= (distance printer3 wp7) 31)
    (= (distance printer0 printer1) 51)
    (= (distance printer1 printer0) 51)
    (= (distance printer0 printer2) 64)
    (= (distance printer2 printer0) 64)
    (= (distance printer0 printer3) 82)
    (= (distance printer3 printer0) 82)
    (= (distance printer1 printer2) 27)
    (= (distance printer2 printer1) 27)
    (= (distance printer1 printer3) 49)
    (= (distance printer3 printer1) 49)
    (= (distance printer2 printer3) 76)
    (= (distance printer3 printer2) 76)

)
(:goal (and
    (papers_delivered wp0)
    (papers_delivered wp5)
    (papers_delivered wp2)
    (papers_delivered wp0)
))
)
