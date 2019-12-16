#lang racket/base

(provide (all-defined-out))

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (abs x)
    (if (> x 0) x (- x)))

(define (average x y)
    (/ (+ x y) 2))