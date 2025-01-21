#lang simply-scheme

;;Shortened & inlined version of pigl from lecture 1
(define (pigl wd)
        (if (not (member? (first wd) '(a e i o u)))
            (pigl (word (bf wd) (first wd)))
            (word wd 'ay))
)