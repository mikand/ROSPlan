(define (problem run-generator22)
(:domain generator2)
(:objects b1 b2 b3 b4 b5 - battery GB - generalBattery r - rover)
(:init
   (= (roverenergy r) 200)
   (night)
   (datatosend)
   (inuse r)
   (gboff GB)
   (= (SoCGB GB) 180)
   (= (SoC b1) 10)
   (off b1)
   (off b2)
   (= (SoC b2) 10)
   (off b3)
   (= (SoC b3) 10)
   (off b4)
   (= (SoC b4) 10)
    (off b5)
   (= (SoC b5) 20)

   (at 50.0 (sunexposure)))

(:goal (datasent))
(:metric minimize ( total-time ))
)
