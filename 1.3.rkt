#lang sicp
(define (sum-of-squares x y z)
  
  (define (square x)
    (* x x))
  
  (- (+ (square x ) (square y) (square z))
     (square (min x y z))))

(sum-of-squares 10 3 50)

