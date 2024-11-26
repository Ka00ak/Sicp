#! /usr/bin/racket
#lang racket

(define (square x) (* x x))

(define (fun x y z) (if (> x y)
		      (if (> y z)
			(+ (square x) (square y))
			(+ (square x) (square z)))
		      (if (> x z)
			(+ (square y) (square x))
			(+ (square y) (square z)))))

(displayln (fun 1 1 1)) ; 2
(displayln (fun 1 1 2)) ; 5
(displayln (fun 1 2 2)) ; 8
(displayln (fun 1 2 3)) ; 13
(displayln (fun 2 3 1)) ; 13
(displayln (fun 3 1 2)) ; 13
