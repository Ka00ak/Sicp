#! /usr/bin/racket
#lang racket

(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1)
		 (A x (- y 1))))))

(define (f n) (A 0 n)) ; 2n
(define (g n) (A 1 n)) ; 2^n
(define (h n) (A 2 n)) ; ---
(define (k n) (* 5 n n)) ; 5(n^2)

(displayln (A 1 1))
(displayln (A 1 2))
(displayln (A 1 3))
(displayln (A 1 4))
(displayln (A 1 5))
(displayln (A 1 6))
(displayln (A 1 7))
(displayln (A 1 8))
(displayln (A 1 9))
(displayln (A 1 10)) ; 1024
(displayln (A 2 1))
(displayln (A 2 2))
(displayln (A 2 3))
(displayln (A 2 4)) ; 65536
(displayln (A 3 1))
(displayln (A 3 2))
(displayln (A 3 3)) ; 65536
