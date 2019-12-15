#lang racket/base

(provide (all-defined-out))

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))