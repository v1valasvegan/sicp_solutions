#lang racket/base
(require "math.rkt")

(define (good-enough? guess x)
  (< (abs (- (cubic guess) x)) (* 0.0001 guess)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cubic-iter guess x)
  (if (good-enough? guess x)
    guess
    (cubic-iter (improve guess x)
                x)))

(define (cubicrt x) (cubic-iter 1.0 x))


(displayln (cubicrt 8))
(displayln (cubicrt 27))
(displayln (cubicrt 125))