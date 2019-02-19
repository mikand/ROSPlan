(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
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
    (at 2487.5 (not (delivery_destination wp0)))
    (delivery_destination wp1)
    (at 2487.5 (not (delivery_destination wp1)))
    (delivery_destination wp2)
    (at 2487.5 (not (delivery_destination wp2)))
    (delivery_destination wp3)
    (at 2487.5 (not (delivery_destination wp3)))
    (delivery_destination wp4)
    (at 2487.5 (not (delivery_destination wp4)))
    (delivery_destination wp5)
    (at 2487.5 (not (delivery_destination wp5)))
    (delivery_destination wp6)
    (at 2487.5 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 42)
    (= (distance wp1 wp0) 42)
    (= (distance wp0 wp2) 55)
    (= (distance wp2 wp0) 55)
    (= (distance wp0 wp3) 50)
    (= (distance wp3 wp0) 50)
    (= (distance wp0 wp4) 109)
    (= (distance wp4 wp0) 109)
    (= (distance wp0 wp5) 9)
    (= (distance wp5 wp0) 9)
    (= (distance wp0 wp6) 77)
    (= (distance wp6 wp0) 77)
    (= (distance wp0 printer0) 48)
    (= (distance printer0 wp0) 48)
    (= (distance wp0 printer1) 58)
    (= (distance printer1 wp0) 58)
    (= (distance wp0 printer2) 69)
    (= (distance printer2 wp0) 69)
    (= (distance wp0 printer3) 55)
    (= (distance printer3 wp0) 55)
    (= (distance wp1 wp2) 77)
    (= (distance wp2 wp1) 77)
    (= (distance wp1 wp3) 92)
    (= (distance wp3 wp1) 92)
    (= (distance wp1 wp4) 131)
    (= (distance wp4 wp1) 131)
    (= (distance wp1 wp5) 51)
    (= (distance wp5 wp1) 51)
    (= (distance wp1 wp6) 119)
    (= (distance wp6 wp1) 119)
    (= (distance wp1 printer0) 22)
    (= (distance printer0 wp1) 22)
    (= (distance wp1 printer1) 16)
    (= (distance printer1 wp1) 16)
    (= (distance wp1 printer2) 91)
    (= (distance printer2 wp1) 91)
    (= (distance wp1 printer3) 97)
    (= (distance printer3 wp1) 97)
    (= (distance wp2 wp3) 55)
    (= (distance wp3 wp2) 55)
    (= (distance wp2 wp4) 54)
    (= (distance wp4 wp2) 54)
    (= (distance wp2 wp5) 50)
    (= (distance wp5 wp2) 50)
    (= (distance wp2 wp6) 82)
    (= (distance wp6 wp2) 82)
    (= (distance wp2 printer0) 55)
    (= (distance printer0 wp2) 55)
    (= (distance wp2 printer1) 61)
    (= (distance printer1 wp2) 61)
    (= (distance wp2 printer2) 50)
    (= (distance printer2 wp2) 50)
    (= (distance wp2 printer3) 64)
    (= (distance printer3 wp2) 64)
    (= (distance wp3 wp4) 83)
    (= (distance wp4 wp3) 83)
    (= (distance wp3 wp5) 41)
    (= (distance wp5 wp3) 41)
    (= (distance wp3 wp6) 27)
    (= (distance wp6 wp3) 27)
    (= (distance wp3 printer0) 98)
    (= (distance printer0 wp3) 98)
    (= (distance wp3 printer1) 108)
    (= (distance printer1 wp3) 108)
    (= (distance wp3 printer2) 43)
    (= (distance printer2 wp3) 43)
    (= (distance wp3 printer3) 35)
    (= (distance printer3 wp3) 35)
    (= (distance wp4 wp5) 104)
    (= (distance wp5 wp4) 104)
    (= (distance wp4 wp6) 100)
    (= (distance wp6 wp4) 100)
    (= (distance wp4 printer0) 109)
    (= (distance printer0 wp4) 109)
    (= (distance wp4 printer1) 115)
    (= (distance printer1 wp4) 115)
    (= (distance wp4 printer2) 60)
    (= (distance printer2 wp4) 60)
    (= (distance wp4 printer3) 118)
    (= (distance printer3 wp4) 118)
    (= (distance wp5 wp6) 68)
    (= (distance wp6 wp5) 68)
    (= (distance wp5 printer0) 57)
    (= (distance printer0 wp5) 57)
    (= (distance wp5 printer1) 67)
    (= (distance printer1 wp5) 67)
    (= (distance wp5 printer2) 64)
    (= (distance printer2 wp5) 64)
    (= (distance wp5 printer3) 46)
    (= (distance printer3 wp5) 46)
    (= (distance wp6 printer0) 125)
    (= (distance printer0 wp6) 125)
    (= (distance wp6 printer1) 135)
    (= (distance printer1 wp6) 135)
    (= (distance wp6 printer2) 60)
    (= (distance printer2 wp6) 60)
    (= (distance wp6 printer3) 22)
    (= (distance printer3 wp6) 22)
    (= (distance printer0 printer1) 10)
    (= (distance printer1 printer0) 10)
    (= (distance printer0 printer2) 93)
    (= (distance printer2 printer0) 93)
    (= (distance printer0 printer3) 103)
    (= (distance printer3 printer0) 103)
    (= (distance printer1 printer2) 103)
    (= (distance printer2 printer1) 103)
    (= (distance printer1 printer3) 113)
    (= (distance printer3 printer1) 113)
    (= (distance printer2 printer3) 78)
    (= (distance printer3 printer2) 78)

)
(:goal (and
    (papers_delivered wp4)
    (papers_delivered wp6)
    (papers_delivered wp2)
    (papers_delivered wp4)
    (papers_delivered wp1)
    (papers_delivered wp5)
    (papers_delivered wp3)
    (papers_delivered wp4)
))
)
