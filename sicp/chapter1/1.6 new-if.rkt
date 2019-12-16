#lang racket/base
(require "math.rkt");

;  Лисп использует аппликативный порядок вычислений, поэтому пытается вычислить все аргументы
;  функции new-if и попадает в бесконечный цикл, рекурсивно вызывая sqrt-iter. В случае с if 
;  этого не происходит, т.к. if является специальной формой и вычисляется используя нормальный 
;  порядок, т.е. вычисляется значение предиката, а затем значение соответвующей ветви. При этом 
;  другая ветвь не обрабатывается.

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
    (else else-clause)))

(define (good-enough? guess x) 
    (< (abs (- (square guess) x)) 0.0001))

(define (improve guess x)
    (average guess (/ x guess)))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                    x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))



(displayln (sqrt 2))