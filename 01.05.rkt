#! /usr/bin/racket
#lang racket

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

(displayln (test 0 (p))) ; Infinite loop
