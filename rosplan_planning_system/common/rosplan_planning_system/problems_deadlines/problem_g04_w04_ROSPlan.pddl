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
    (at 1481.25 (not (delivery_destination wp0)))
    (delivery_destination wp1)
    (at 1481.25 (not (delivery_destination wp1)))
    (delivery_destination wp2)
    (at 1481.25 (not (delivery_destination wp2)))
    (delivery_destination wp3)
    (at 1481.25 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 108)
    (= (distance wp1 wp0) 108)
    (= (distance wp0 wp2) 46)
    (= (distance wp2 wp0) 46)
    (= (distance wp0 wp3) 98)
    (= (distance wp3 wp0) 98)
    (= (distance wp0 printer0) 101)
    (= (distance printer0 wp0) 101)
    (= (distance wp0 printer1) 110)
    (= (distance printer1 wp0) 110)
    (= (distance wp0 printer2) 47)
    (= (distance printer2 wp0) 47)
    (= (distance wp0 printer3) 70)
    (= (distance printer3 wp0) 70)
    (= (distance wp1 wp2) 62)
    (= (distance wp2 wp1) 62)
    (= (distance wp1 wp3) 124)
    (= (distance wp3 wp1) 124)
    (= (distance wp1 printer0) 63)
    (= (distance printer0 wp1) 63)
    (= (distance wp1 printer1) 86)
    (= (distance printer1 wp1) 86)
    (= (distance wp1 printer2) 61)
    (= (distance printer2 wp1) 61)
    (= (distance wp1 printer3) 38)
    (= (distance printer3 wp1) 38)
    (= (distance wp2 wp3) 100)
    (= (distance wp3 wp2) 100)
    (= (distance wp2 printer0) 55)
    (= (distance printer0 wp2) 55)
    (= (distance wp2 printer1) 64)
    (= (distance printer1 wp2) 64)
    (= (distance wp2 printer2) 27)
    (= (distance printer2 wp2) 27)
    (= (distance wp2 printer3) 24)
    (= (distance printer3 wp2) 24)
    (= (distance wp3 printer0) 61)
    (= (distance printer0 wp3) 61)
    (= (distance wp3 printer1) 38)
    (= (distance printer1 wp3) 38)
    (= (distance wp3 printer2) 73)
    (= (distance printer2 wp3) 73)
    (= (distance wp3 printer3) 102)
    (= (distance printer3 wp3) 102)
    (= (distance printer0 printer1) 23)
    (= (distance printer1 printer0) 23)
    (= (distance printer0 printer2) 54)
    (= (distance printer2 printer0) 54)
    (= (distance printer0 printer3) 41)
    (= (distance printer3 printer0) 41)
    (= (distance printer1 printer2) 63)
    (= (distance printer2 printer1) 63)
    (= (distance printer1 printer3) 64)
    (= (distance printer3 printer1) 64)
    (= (distance printer2 printer3) 29)
    (= (distance printer3 printer2) 29)

)
(:goal (and
    (papers_delivered wp0)
    (papers_delivered wp3)
    (papers_delivered wp3)
    (papers_delivered wp3)
))
)
