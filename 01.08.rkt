#! /usr/bin/racket
#lang racket

(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2))
(define (improve guess x) (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess-old guess) (< (abs (- guess guess-old)) 0.0001))

(define (sqrt-iter guess-old guess x)
  (if (good-enough? guess-old guess)
    guess
    (sqrt-iter guess (improve guess x) x)))


(define (sqrt-cube x)
  (sqrt-iter 0.0 1.0 x))

(displayln (sqrt-cube 0.00000000000123)); 0.0002068351115716507 (14 digits mantissa)
(displayln (sqrt-cube 0.0000000000123))	; 0.0002568530616117232 (13 digits mantissa)
(displayln (sqrt-cube 0.000000000123))	; 0.0005049171044112137 (12 digits mantissa)
(displayln (sqrt-cube 0.00000000123))	; 0.0010718876892401768 (11 digits mantissa)
(displayln (sqrt-cube 0.0000000123))	; 0.0023100286414219832 (10 digits mantissa)
(displayln (sqrt-cube 27))		; 3.0000000000000977 
(displayln (sqrt-cube 1234567890))	; 1072.7659796410883 (10 digits)
(displayln (sqrt-cube 12345678901))	; 2311.2042408871985 (11 digits)
(displayln (sqrt-cube 123456789012))	; 4979.338592343075 (12 digits)
(displayln (sqrt-cube 1234567890123))	; 10727.659796767139 (13 digits)
(displayln (sqrt-cube 12345678901234))	; 23112.042409018006 (14 digits)

