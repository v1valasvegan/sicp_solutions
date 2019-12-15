#lang racket/base


(define (programmer-level number)
    (cond
        [(and (number > 0) (number < 11)) "junior"]
        [(and (number > 10) (number < 21)) "middle"]
        [(number > 20) "junior"]))

(displayln (programmer-level 2))
 