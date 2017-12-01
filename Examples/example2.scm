;;
;; A simple example in ArduinoML for Scheme
;;
(define-application Example_with_two_leds
  :bricks
  ((button sensor 9)
   (led1 actuator 11)
   (led2 actuator 12))

  :states
  ((on  (set led1 "HIGH") (set led2 "LOW"))
   (off (set led1 "LOW")  (set led2 "HIGH")))
  :initial
  off
  :transitions
  ((on -> off when_is button "HIGH")
   (off -> on when_is button "HIGH")))
