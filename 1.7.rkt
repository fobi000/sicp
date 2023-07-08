#lang sicp



(define (improve guess x)
  (define (average x y)
    (/ (+ x y) 2))
  (average guess (/ x guess)))
  
(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0) (- x) x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-tier guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-tier (improve guess x) x)))

(define (sqrt x)
  (sqrt-tier 1.0 x))


(sqrt (+ 999 999))
 