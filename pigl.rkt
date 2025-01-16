#lang racket
(require (planet dyoo/simply-scheme:2:2))
(define (pigl wd)
        (if (member? (first wd) '(a e i o u))
            (pigl (word (bf wd) (first wd)))
            (word wd 'ay))
)