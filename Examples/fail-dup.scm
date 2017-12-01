;;
;; A simple example in ArduinoML for Scheme
;;
(define-application Simple
  :bricks
  ((button sensor 9)
   (led actuator 9)             ;; port already used
   (led actuator 10))           ;; name already used
  :states
  ((on  (set led "HIGH"))
   (off (set led "LOW")))
  :initial
  off
  :transitions
  ((on -> off when_is button "HIGH")
   (off -> on when_is button "HIGH")))



(define-application Simple
  :sensors
  ((button 9))
  :actuators
  ((led 9)             ;; port already used
   (button  10))          ;; name already used
  :states
  ((on  (set! led "HIGH"))
   (off (set! led "LOW")))
  :transitions
  ((on -> off when button "HIGH")
   (off -> on when button "HIGH"))
  :initial
  off)
  


