(define (problem run-generator22)
(:domain generator2)
(:objects b1 b2 b3 b4 b5 b6 b7 - battery GB - generalBattery r - rover)
(:init
   (= (roverenergy r) 210)
   (night)
   (datatosend)
   (inuse r)
   (gboff GB)
   (= (SoCGB GB) 182)
   (= (SoC b1) 12)
   (off b1)
   (off b2)
   (= (SoC b2) 12)
   (off b3)
   (= (SoC b3) 12)
   (off b4)
   (= (SoC b4) 12)
   (off b5)
   (= (SoC b5) 12)
   (off b6)
   (= (SoC b6) 6)
      (off b7)
   (= (SoC b7) 6)
; (at 80.0 (sunexposure))
)

(:goal (datasent))
(:metric minimize ( total-time ))
)
