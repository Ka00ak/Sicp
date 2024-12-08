#! /usr/bin/racket
#lang racket

(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2))
(define (improve guess x) (average guess (/ x guess)))

;
(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;
(define (good-enough-new? guess-old guess) (< (abs (- guess guess-old)) 0.001))

(define (sqrt-iter-new guess-old guess x)
  (if (good-enough-new? guess-old guess)
    guess
    (sqrt-iter-new guess (improve guess x) x)))


(define (sqrt-new x)
  (sqrt-iter-new 0.0 1.0 x))

(displayln (sqrt 0.00000000000123))	; 0.03125000001310718 (14 digits mantissa)
(displayln (sqrt 0.0000000000123))	; 0.03125000013107187 (13 digits mantissa)
(displayln (sqrt 0.000000000123))	; 0.03125000131071874 (12 digits mantissa)
(displayln (sqrt 0.00000000123))	; 0.031250013107186406 (11 digits mantissa)
(displayln (sqrt 0.0000000123))		; 0.03125013107176537 (10 digits mantissa)
(displayln (sqrt 9)) 			; 3.00009155413138
(displayln (sqrt 1234567890)) 		; 35136.41828645232 (10 digits)
(displayln (sqrt 12345678901)) 		; 111111.11061005556 (11 digits)
(displayln (sqrt 123456789012)) 	; 351364.1828815225 (12 digits)
(displayln (sqrt 1234567890123)) 	; 1111111.1061109055 (13 digits)
;(displayln (sqrt 12345678901234)) 	; Infinite loop (14 digits)

(displayln (sqrt-new 0.00000000000123)) ; 0.0009765629198395633 (14 digits mantissa)
(displayln (sqrt-new 0.0000000000123))	; 0.000976566698392386 (13 digits mantissa)
(displayln (sqrt-new 0.000000000123))	; 0.000976604483598975 (12 digits mantissa)
(displayln (sqrt-new 0.00000000123))	; 0.000976982303505015 (11 digits mantissa)
(displayln (sqrt-new 0.0000000123))	; 0.000980757290521719 (10 digits mantissa)
(displayln (sqrt-new 9))		; 3.00009155413138
(displayln (sqrt-new 1234567890))	; 35136.41828644462 (10 digits)
(displayln (sqrt-new 12345678901))	; 111111.11061005556 (11 digits)
(displayln (sqrt-new 123456789012))	; 351364.1828815225 (12 digits)
(displayln (sqrt-new 1234567890123))	; 1111111.1061109055 (13 digits)
(displayln (sqrt-new 12345678901234))	; 3513641.8288200637 (14 digits)

