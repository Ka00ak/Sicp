#! /usr/bin/racket
#lang racket

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2))
(define (improve guess x) (average guess (/ x guess)))
(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter1 guess x)
  (if (good-enough? guess x)
	  guess
	  (sqrt-iter1 (improve guess x)
		     x)))

(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter2 (improve guess x)
		     x)))

(displayln (new-if (= 2 3) 0 5)) ; 5
(displayln (new-if (= 1 1) 0 5)) ; 0
(displayln (sqrt-iter1 1.0 9)) ; 3.00009155413138
(displayln (sqrt-iter2 1.0 9)) ; Infinite loop
