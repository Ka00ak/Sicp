#! /usr/bin/racket
#lang racket

(define a 3)
(define b (+ a 1))

(displayln (+ 5 3 4)) ; 12
(displayln (- 9 1)) ; 8
(displayln (/ 6 2)) ; 3
(displayln (+ (* 2 4) (- 4 6))) ; 6

(displayln (+ a b (* a b))) ; 19
(displayln (= a b)) ; #f

(displayln (if (and (> b a) (< b (* a b)))
	     b
	     a)) ; 4

(displayln (cond ((= a 4) 6)
		 ((= b 4) (+ 6 7 a))
		 (else 25))) ; 16

(displayln (+ 2 (if (> b a) b a))) ; 6

(displayln (* (cond ((> a b) a)
		    ((< a b) b)
		    (else -1))
	      (+ a 1))) ; 16
