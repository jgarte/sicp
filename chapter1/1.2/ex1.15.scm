;; Exercise 1.15
;; Computing the sine function

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (abs x)
  (if (> x 0)
      x
      (- x)))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

;; How many times is the procedure 'p' applied when '(sine 12.15)'
;; is evaluated?

;; (sine 12.15)
;; (p (sine 4.05))
;; (p (p (sine 1.35)))
;; (p (p (p (sine 0.15))))
;; (p (p (p (p (p 0.05)))))
;; p is called 5 times


;; What is the order of growth in space and number of steps used
;; by the process generated by the sine procedure when '(sine a)' is
;; evaluated?

;; The order of growth for the function is: O(log(n)).
;; Note that the log is to base 3.
