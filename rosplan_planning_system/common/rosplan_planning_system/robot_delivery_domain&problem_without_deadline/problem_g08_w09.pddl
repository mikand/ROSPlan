(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 wp7 wp8 - waypoint
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
    (delivery_destination wp8)

    (= (distance wp0 wp1) 48)
    (= (distance wp1 wp0) 48)
    (= (distance wp0 wp2) 67)
    (= (distance wp2 wp0) 67)
    (= (distance wp0 wp3) 23)
    (= (distance wp3 wp0) 23)
    (= (distance wp0 wp4) 44)
    (= (distance wp4 wp0) 44)
    (= (distance wp0 wp5) 49)
    (= (distance wp5 wp0) 49)
    (= (distance wp0 wp6) 62)
    (= (distance wp6 wp0) 62)
    (= (distance wp0 wp7) 54)
    (= (distance wp7 wp0) 54)
    (= (distance wp0 wp8) 67)
    (= (distance wp8 wp0) 67)
    (= (distance wp0 printer0) 59)
    (= (distance printer0 wp0) 59)
    (= (distance wp0 printer1) 99)
    (= (distance printer1 wp0) 99)
    (= (distance wp0 printer2) 76)
    (= (distance printer2 wp0) 76)
    (= (distance wp0 printer3) 49)
    (= (distance printer3 wp0) 49)
    (= (distance wp1 wp2) 19)
    (= (distance wp2 wp1) 19)
    (= (distance wp1 wp3) 63)
    (= (distance wp3 wp1) 63)
    (= (distance wp1 wp4) 70)
    (= (distance wp4 wp1) 70)
    (= (distance wp1 wp5) 11)
    (= (distance wp5 wp1) 11)
    (= (distance wp1 wp6) 70)
    (= (distance wp6 wp1) 70)
    (= (distance wp1 wp7) 18)
    (= (distance wp7 wp1) 18)
    (= (distance wp1 wp8) 115)
    (= (distance wp8 wp1) 115)
    (= (distance wp1 printer0) 107)
    (= (distance printer0 wp1) 107)
    (= (distance wp1 printer1) 59)
    (= (distance printer1 wp1) 59)
    (= (distance wp1 printer2) 28)
    (= (distance printer2 wp1) 28)
    (= (distance wp1 printer3) 93)
    (= (distance printer3 wp1) 93)
    (= (distance wp2 wp3) 82)
    (= (distance wp3 wp2) 82)
    (= (distance wp2 wp4) 89)
    (= (distance wp4 wp2) 89)
    (= (distance wp2 wp5) 30)
    (= (distance wp5 wp2) 30)
    (= (distance wp2 wp6) 89)
    (= (distance wp6 wp2) 89)
    (= (distance wp2 wp7) 37)
    (= (distance wp7 wp2) 37)
    (= (distance wp2 wp8) 134)
    (= (distance wp8 wp2) 134)
    (= (distance wp2 printer0) 126)
    (= (distance printer0 wp2) 126)
    (= (distance wp2 printer1) 40)
    (= (distance printer1 wp2) 40)
    (= (distance wp2 printer2) 9)
    (= (distance printer2 wp2) 9)
    (= (distance wp2 printer3) 112)
    (= (distance printer3 wp2) 112)
    (= (distance wp3 wp4) 67)
    (= (distance wp4 wp3) 67)
    (= (distance wp3 wp5) 72)
    (= (distance wp5 wp3) 72)
    (= (distance wp3 wp6) 85)
    (= (distance wp6 wp3) 85)
    (= (distance wp3 wp7) 77)
    (= (distance wp7 wp3) 77)
    (= (distance wp3 wp8) 86)
    (= (distance wp8 wp3) 86)
    (= (distance wp3 printer0) 78)
    (= (distance printer0 wp3) 78)
    (= (distance wp3 printer1) 122)
    (= (distance printer1 wp3) 122)
    (= (distance wp3 printer2) 73)
    (= (distance printer2 wp3) 73)
    (= (distance wp3 printer3) 72)
    (= (distance printer3 wp3) 72)
    (= (distance wp4 wp5) 59)
    (= (distance wp5 wp4) 59)
    (= (distance wp4 wp6) 18)
    (= (distance wp6 wp4) 18)
    (= (distance wp4 wp7) 52)
    (= (distance wp7 wp4) 52)
    (= (distance wp4 wp8) 45)
    (= (distance wp8 wp4) 45)
    (= (distance wp4 printer0) 37)
    (= (distance printer0 wp4) 37)
    (= (distance wp4 printer1) 63)
    (= (distance printer1 wp4) 63)
    (= (distance wp4 printer2) 98)
    (= (distance printer2 wp4) 98)
    (= (distance wp4 printer3) 23)
    (= (distance printer3 wp4) 23)
    (= (distance wp5 wp6) 59)
    (= (distance wp6 wp5) 59)
    (= (distance wp5 wp7) 7)
    (= (distance wp7 wp5) 7)
    (= (distance wp5 wp8) 104)
    (= (distance wp8 wp5) 104)
    (= (distance wp5 printer0) 96)
    (= (distance printer0 wp5) 96)
    (= (distance wp5 printer1) 50)
    (= (distance printer1 wp5) 50)
    (= (distance wp5 printer2) 39)
    (= (distance printer2 wp5) 39)
    (= (distance wp5 printer3) 82)
    (= (distance printer3 wp5) 82)
    (= (distance wp6 wp7) 52)
    (= (distance wp7 wp6) 52)
    (= (distance wp6 wp8) 45)
    (= (distance wp8 wp6) 45)
    (= (distance wp6 printer0) 37)
    (= (distance printer0 wp6) 37)
    (= (distance wp6 printer1) 63)
    (= (distance printer1 wp6) 63)
    (= (distance wp6 printer2) 98)
    (= (distance printer2 wp6) 98)
    (= (distance wp6 printer3) 23)
    (= (distance printer3 wp6) 23)
    (= (distance wp7 wp8) 97)
    (= (distance wp8 wp7) 97)
    (= (distance wp7 printer0) 89)
    (= (distance printer0 wp7) 89)
    (= (distance wp7 printer1) 45)
    (= (distance printer1 wp7) 45)
    (= (distance wp7 printer2) 46)
    (= (distance printer2 wp7) 46)
    (= (distance wp7 printer3) 75)
    (= (distance printer3 wp7) 75)
    (= (distance wp8 printer0) 8)
    (= (distance printer0 wp8) 8)
    (= (distance wp8 printer1) 108)
    (= (distance printer1 wp8) 108)
    (= (distance wp8 printer2) 143)
    (= (distance printer2 wp8) 143)
    (= (distance wp8 printer3) 22)
    (= (distance printer3 wp8) 22)
    (= (distance printer0 printer1) 100)
    (= (distance printer1 printer0) 100)
    (= (distance printer0 printer2) 135)
    (= (distance printer2 printer0) 135)
    (= (distance printer0 printer3) 14)
    (= (distance printer3 printer0) 14)
    (= (distance printer1 printer2) 49)
    (= (distance printer2 printer1) 49)
    (= (distance printer1 printer3) 86)
    (= (distance printer3 printer1) 86)
    (= (distance printer2 printer3) 121)
    (= (distance printer3 printer2) 121)
)
(:goal (and
    (papers_delivered wp7)
    (papers_delivered wp4)
    (papers_delivered wp3)
    (papers_delivered wp4)
    (papers_delivered wp4)
    (papers_delivered wp3)
    (papers_delivered wp5)
    (papers_delivered wp0)
))
)
