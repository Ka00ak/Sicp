#! /usr/bin/racket
#lang racket

(define (pascal-triangle i j)
  (cond ((= i 1) 1)
	((or (= j 1) (= j i)) 1)
	(else (+ (pascal-triangle (- i 1) (- j 1))
		 (pascal-triangle (- i 1) j)))))

(define (display-row i j)
  (display (pascal-triangle i j))
  (display " ")
  (if (= j 1)
    (newline)
    (display-row i (- j 1))))

(define (display-pascal-triangle n)
  (if (= n 1)
    (newline)
    (display-pascal-triangle (- n 1)))
  (display-row n n))

(display-pascal-triangle 22)
