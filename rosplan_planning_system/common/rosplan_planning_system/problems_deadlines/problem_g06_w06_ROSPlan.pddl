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
    (at 2723.25 (not (delivery_destination wp0)))
    (delivery_destination wp1)
    (at 2723.25 (not (delivery_destination wp1)))
    (delivery_destination wp2)
    (at 2723.25 (not (delivery_destination wp2)))
    (delivery_destination wp3)
    (at 2723.25 (not (delivery_destination wp3)))
    (delivery_destination wp4)
    (at 2723.25 (not (delivery_destination wp4)))
    (delivery_destination wp5)
    (at 2723.25 (not (delivery_destination wp5)))
    (delivery_destination wp6)
    (at 2723.25 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 47)
    (= (distance wp1 wp0) 47)
    (= (distance wp0 wp2) 71)
    (= (distance wp2 wp0) 71)
    (= (distance wp0 wp3) 77)
    (= (distance wp3 wp0) 77)
    (= (distance wp0 wp4) 24)
    (= (distance wp4 wp0) 24)
    (= (distance wp0 wp5) 78)
    (= (distance wp5 wp0) 78)
    (= (distance wp0 wp6) 57)
    (= (distance wp6 wp0) 57)
    (= (distance wp0 printer0) 71)
    (= (distance printer0 wp0) 71)
    (= (distance wp0 printer1) 71)
    (= (distance printer1 wp0) 71)
    (= (distance wp0 printer2) 77)
    (= (distance printer2 wp0) 77)
    (= (distance wp0 printer3) 21)
    (= (distance printer3 wp0) 21)
    (= (distance wp1 wp2) 70)
    (= (distance wp2 wp1) 70)
    (= (distance wp1 wp3) 124)
    (= (distance wp3 wp1) 124)
    (= (distance wp1 wp4) 49)
    (= (distance wp4 wp1) 49)
    (= (distance wp1 wp5) 53)
    (= (distance wp5 wp1) 53)
    (= (distance wp1 wp6) 82)
    (= (distance wp6 wp1) 82)
    (= (distance wp1 printer0) 118)
    (= (distance printer0 wp1) 118)
    (= (distance wp1 printer1) 40)
    (= (distance printer1 wp1) 40)
    (= (distance wp1 printer2) 102)
    (= (distance printer2 wp1) 102)
    (= (distance wp1 printer3) 68)
    (= (distance printer3 wp1) 68)
    (= (distance wp2 wp3) 60)
    (= (distance wp3 wp2) 60)
    (= (distance wp2 wp4) 95)
    (= (distance wp4 wp2) 95)
    (= (distance wp2 wp5) 33)
    (= (distance wp5 wp2) 33)
    (= (distance wp2 wp6) 128)
    (= (distance wp6 wp2) 128)
    (= (distance wp2 printer0) 48)
    (= (distance printer0 wp2) 48)
    (= (distance wp2 printer1) 94)
    (= (distance printer1 wp2) 94)
    (= (distance wp2 printer2) 148)
    (= (distance printer2 wp2) 148)
    (= (distance wp2 printer3) 60)
    (= (distance printer3 wp2) 60)
    (= (distance wp3 wp4) 79)
    (= (distance wp4 wp3) 79)
    (= (distance wp3 wp5) 87)
    (= (distance wp5 wp3) 87)
    (= (distance wp3 wp6) 90)
    (= (distance wp6 wp3) 90)
    (= (distance wp3 printer0) 24)
    (= (distance printer0 wp3) 24)
    (= (distance wp3 printer1) 148)
    (= (distance printer1 wp3) 148)
    (= (distance wp3 printer2) 88)
    (= (distance printer2 wp3) 88)
    (= (distance wp3 printer3) 56)
    (= (distance printer3 wp3) 56)
    (= (distance wp4 wp5) 102)
    (= (distance wp5 wp4) 102)
    (= (distance wp4 wp6) 33)
    (= (distance wp6 wp4) 33)
    (= (distance wp4 printer0) 73)
    (= (distance printer0 wp4) 73)
    (= (distance wp4 printer1) 69)
    (= (distance printer1 wp4) 69)
    (= (distance wp4 printer2) 53)
    (= (distance printer2 wp4) 53)
    (= (distance wp4 printer3) 35)
    (= (distance printer3 wp4) 35)
    (= (distance wp5 wp6) 135)
    (= (distance wp6 wp5) 135)
    (= (distance wp5 printer0) 81)
    (= (distance printer0 wp5) 81)
    (= (distance wp5 printer1) 93)
    (= (distance printer1 wp5) 93)
    (= (distance wp5 printer2) 155)
    (= (distance printer2 wp5) 155)
    (= (distance wp5 printer3) 67)
    (= (distance printer3 wp5) 67)
    (= (distance wp6 printer0) 92)
    (= (distance printer0 wp6) 92)
    (= (distance wp6 printer1) 58)
    (= (distance printer1 wp6) 58)
    (= (distance wp6 printer2) 20)
    (= (distance printer2 wp6) 20)
    (= (distance wp6 printer3) 68)
    (= (distance printer3 wp6) 68)
    (= (distance printer0 printer1) 142)
    (= (distance printer1 printer0) 142)
    (= (distance printer0 printer2) 112)
    (= (distance printer2 printer0) 112)
    (= (distance printer0 printer3) 50)
    (= (distance printer3 printer0) 50)
    (= (distance printer1 printer2) 64)
    (= (distance printer2 printer1) 64)
    (= (distance printer1 printer3) 92)
    (= (distance printer3 printer1) 92)
    (= (distance printer2 printer3) 88)
    (= (distance printer3 printer2) 88)

)
(:goal (and
    (papers_delivered wp3)
    (papers_delivered wp2)
    (papers_delivered wp0)
    (papers_delivered wp3)
    (papers_delivered wp0)
    (papers_delivered wp1)
))
)
