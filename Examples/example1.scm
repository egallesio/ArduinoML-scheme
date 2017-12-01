;;
;; A simple example in ArduinoML for Scheme
;;
(define-application Simple
  :bricks
  ((button sensor 9)
   (led actuator 12))
  :states
  ((on  (set led "HIGH"))
   (off (set led "LOW")))
  :initial
  off
  :transitions
  ((on -> off when_is button "HIGH")
   (off -> on when_is button "HIGH")))



