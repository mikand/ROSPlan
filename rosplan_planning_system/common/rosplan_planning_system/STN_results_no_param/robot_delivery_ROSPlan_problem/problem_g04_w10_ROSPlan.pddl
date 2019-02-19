(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
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
    (delivery_destination wp1)
    (delivery_destination wp2)
    (delivery_destination wp3)

    (= (distance wp0 wp1) 58)
    (= (distance wp1 wp0) 58)
    (= (distance wp0 wp2) 27)
    (= (distance wp2 wp0) 27)
    (= (distance wp0 wp3) 45)
    (= (distance wp3 wp0) 45)
    (= (distance wp0 printer0) 81)
    (= (distance printer0 wp0) 81)
    (= (distance wp0 printer1) 44)
    (= (distance printer1 wp0) 44)
    (= (distance wp0 printer2) 91)
    (= (distance printer2 wp0) 91)
    (= (distance wp0 printer3) 47)
    (= (distance printer3 wp0) 47)
    (= (distance wp1 wp2) 31)
    (= (distance wp2 wp1) 31)
    (= (distance wp1 wp3) 31)
    (= (distance wp3 wp1) 31)
    (= (distance wp1 printer0) 83)
    (= (distance printer0 wp1) 83)
    (= (distance wp1 printer1) 78)
    (= (distance printer1 wp1) 78)
    (= (distance wp1 printer2) 91)
    (= (distance printer2 wp1) 91)
    (= (distance wp1 printer3) 105)
    (= (distance printer3 wp1) 105)
    (= (distance wp2 wp3) 18)
    (= (distance wp3 wp2) 18)
    (= (distance wp2 printer0) 60)
    (= (distance printer0 wp2) 60)
    (= (distance wp2 printer1) 47)
    (= (distance printer1 wp2) 47)
    (= (distance wp2 printer2) 70)
    (= (distance printer2 wp2) 70)
    (= (distance wp2 printer3) 74)
    (= (distance printer3 wp2) 74)
    (= (distance wp3 printer0) 70)
    (= (distance printer0 wp3) 70)
    (= (distance wp3 printer1) 65)
    (= (distance printer1 wp3) 65)
    (= (distance wp3 printer2) 60)
    (= (distance printer2 wp3) 60)
    (= (distance wp3 printer3) 92)
    (= (distance printer3 wp3) 92)
    (= (distance printer0 printer1) 37)
    (= (distance printer1 printer0) 37)
    (= (distance printer0 printer2) 12)
    (= (distance printer2 printer0) 12)
    (= (distance printer0 printer3) 70)
    (= (distance printer3 printer0) 70)
    (= (distance printer1 printer2) 47)
    (= (distance printer2 printer1) 47)
    (= (distance printer1 printer3) 33)
    (= (distance printer3 printer1) 33)
    (= (distance printer2 printer3) 80)
    (= (distance printer3 printer2) 80)

)
(:goal (and
    (papers_delivered wp1)
    (papers_delivered wp1)
    (papers_delivered wp2)
    (papers_delivered wp0)
    (papers_delivered wp0)
))
)
