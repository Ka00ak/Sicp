#! /usr/bin/racket
#lang racket

(define (f n)
  (cond ((< n 3) n)
  	(else (+ (f (- n 1))
		 (f (- n 2))
		 (f (- n 3))))))

; This is procedure of recursive process
;(f 6)
;(+ (f 5) (f 4) (f 3))
;(+ (+ (f 4) (f 3) 2) (+ (f 3) 2 1) (+ 2 1 0))
;(+ (+ (+ (f 3) 2 1) (+ 2 1 0) 2) (+ (+ 2 1 0) 2 1) 3) 
;(+ (+ (+ (+ 2 1 0) 2 1) 3 2) 6 3) 
;(+ (+ (+ 3 2 1) 3 2) 6 3) 
;(+ (+ 6 3 2) 6 3) 
;(+ 11 6 3) 
;20

(displayln (f 0)) ; 0
(displayln (f 1)) ; 1
(displayln (f 2)) ; 2
(displayln (f 3)) ; 3
(displayln (f 4)) ; 6
(displayln (f 5)) ; 11
(displayln (f 6)) ; 20
(displayln (f 7)) ; 37
(displayln "")

(define (f-iter x y z count)
  (if (= count 0)
    x
    (f-iter y z (+ x y z) (- count 1))))

; This is procedure of iterative process
;(f-iter 0 1 2 6)
;(f-iter 1 2 3 5)
;(f-iter 2 3 6 4)
;(f-iter 3 6 11 3)
;(f-iter 6 11 20 2)
;(f-iter 11 20 37 1)
;(f-iter 20 37 68 0)
;20

(displayln (f-iter 0 1 2 0)) ; 0
(displayln (f-iter 0 1 2 1)) ; 1 
(displayln (f-iter 0 1 2 2)) ; 2 
(displayln (f-iter 0 1 2 3)) ; 3 
(displayln (f-iter 0 1 2 4)) ; 6 
(displayln (f-iter 0 1 2 5)) ; 11 
(displayln (f-iter 0 1 2 6)) ; 20
(displayln (f-iter 0 1 2 7)) ; 37 
