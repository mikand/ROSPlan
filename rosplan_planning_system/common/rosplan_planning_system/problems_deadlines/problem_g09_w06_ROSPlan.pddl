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
    (at 1182.25 (not (delivery_destination wp0)))
    (delivery_destination wp1)
    (at 1182.25 (not (delivery_destination wp1)))
    (delivery_destination wp2)
    (at 1182.25 (not (delivery_destination wp2)))
    (delivery_destination wp3)
    (at 1182.25 (not (delivery_destination wp3)))
    (delivery_destination wp4)
    (at 1182.25 (not (delivery_destination wp4)))
    (delivery_destination wp5)
    (at 1182.25 (not (delivery_destination wp5)))
    (delivery_destination wp6)
    (at 1182.25 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 28)
    (= (distance wp1 wp0) 28)
    (= (distance wp0 wp2) 90)
    (= (distance wp2 wp0) 90)
    (= (distance wp0 wp3) 82)
    (= (distance wp3 wp0) 82)
    (= (distance wp0 wp4) 71)
    (= (distance wp4 wp0) 71)
    (= (distance wp0 wp5) 60)
    (= (distance wp5 wp0) 60)
    (= (distance wp0 wp6) 40)
    (= (distance wp6 wp0) 40)
    (= (distance wp0 printer0) 74)
    (= (distance printer0 wp0) 74)
    (= (distance wp0 printer1) 102)
    (= (distance printer1 wp0) 102)
    (= (distance wp0 printer2) 111)
    (= (distance printer2 wp0) 111)
    (= (distance wp0 printer3) 24)
    (= (distance printer3 wp0) 24)
    (= (distance wp1 wp2) 90)
    (= (distance wp2 wp1) 90)
    (= (distance wp1 wp3) 76)
    (= (distance wp3 wp1) 76)
    (= (distance wp1 wp4) 59)
    (= (distance wp4 wp1) 59)
    (= (distance wp1 wp5) 38)
    (= (distance wp5 wp1) 38)
    (= (distance wp1 wp6) 40)
    (= (distance wp6 wp1) 40)
    (= (distance wp1 printer0) 74)
    (= (distance printer0 wp1) 74)
    (= (distance wp1 printer1) 102)
    (= (distance printer1 wp1) 102)
    (= (distance wp1 printer2) 111)
    (= (distance printer2 wp1) 111)
    (= (distance wp1 printer3) 4)
    (= (distance printer3 wp1) 4)
    (= (distance wp2 wp3) 52)
    (= (distance wp3 wp2) 52)
    (= (distance wp2 wp4) 41)
    (= (distance wp4 wp2) 41)
    (= (distance wp2 wp5) 52)
    (= (distance wp5 wp2) 52)
    (= (distance wp2 wp6) 50)
    (= (distance wp6 wp2) 50)
    (= (distance wp2 printer0) 42)
    (= (distance printer0 wp2) 42)
    (= (distance wp2 printer1) 30)
    (= (distance printer1 wp2) 30)
    (= (distance wp2 printer2) 63)
    (= (distance printer2 wp2) 63)
    (= (distance wp2 printer3) 92)
    (= (distance printer3 wp2) 92)
    (= (distance wp3 wp4) 17)
    (= (distance wp4 wp3) 17)
    (= (distance wp3 wp5) 38)
    (= (distance wp5 wp3) 38)
    (= (distance wp3 wp6) 80)
    (= (distance wp6 wp3) 80)
    (= (distance wp3 printer0) 10)
    (= (distance printer0 wp3) 10)
    (= (distance wp3 printer1) 82)
    (= (distance printer1 wp3) 82)
    (= (distance wp3 printer2) 115)
    (= (distance printer2 wp3) 115)
    (= (distance wp3 printer3) 78)
    (= (distance printer3 wp3) 78)
    (= (distance wp4 wp5) 21)
    (= (distance wp5 wp4) 21)
    (= (distance wp4 wp6) 69)
    (= (distance wp6 wp4) 69)
    (= (distance wp4 printer0) 15)
    (= (distance printer0 wp4) 15)
    (= (distance wp4 printer1) 71)
    (= (distance printer1 wp4) 71)
    (= (distance wp4 printer2) 104)
    (= (distance printer2 wp4) 104)
    (= (distance wp4 printer3) 61)
    (= (distance printer3 wp4) 61)
    (= (distance wp5 wp6) 58)
    (= (distance wp6 wp5) 58)
    (= (distance wp5 printer0) 36)
    (= (distance printer0 wp5) 36)
    (= (distance wp5 printer1) 64)
    (= (distance printer1 wp5) 64)
    (= (distance wp5 printer2) 93)
    (= (distance printer2 wp5) 93)
    (= (distance wp5 printer3) 40)
    (= (distance printer3 wp5) 40)
    (= (distance wp6 printer0) 70)
    (= (distance printer0 wp6) 70)
    (= (distance wp6 printer1) 62)
    (= (distance printer1 wp6) 62)
    (= (distance wp6 printer2) 71)
    (= (distance printer2 wp6) 71)
    (= (distance wp6 printer3) 42)
    (= (distance printer3 wp6) 42)
    (= (distance printer0 printer1) 72)
    (= (distance printer1 printer0) 72)
    (= (distance printer0 printer2) 105)
    (= (distance printer2 printer0) 105)
    (= (distance printer0 printer3) 76)
    (= (distance printer3 printer0) 76)
    (= (distance printer1 printer2) 33)
    (= (distance printer2 printer1) 33)
    (= (distance printer1 printer3) 104)
    (= (distance printer3 printer1) 104)
    (= (distance printer2 printer3) 113)
    (= (distance printer3 printer2) 113)

)
(:goal (and
    (papers_delivered wp4)
    (papers_delivered wp1)
    (papers_delivered wp1)
    (papers_delivered wp1)
    (papers_delivered wp0)
    (papers_delivered wp4)
    (papers_delivered wp5)
    (papers_delivered wp5)
    (papers_delivered wp1)
))
)
