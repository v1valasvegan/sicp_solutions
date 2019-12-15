#lang racket/base
(require "math.rkt")

(define (sum-of-top-two-squares a b c)
    (cond
        ((and (< a b) (< a c)) (sum-of-squares b c))
        ((and (< b a) (< b c)) (sum-of-squares a c))
        (else (sum-of-squares a b))))

(equal? (sum-of-top-two-squares 3 4 2) 25)
(equal? (sum-of-top-two-squares 5 3 4) 41)
(equal? (sum-of-top-two-squares 1 2 3) 13)
