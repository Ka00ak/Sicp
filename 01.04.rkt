#! /usr/bin/racket
#lang racket

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(displayln (a-plus-abs-b 2 2)) ; 4
(displayln (a-plus-abs-b 2 -2)) ; 4
(displayln (a-plus-abs-b -2 2)) ; 0
(displayln (a-plus-abs-b -2 -2)) ; 0
