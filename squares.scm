#lang simply-scheme

(define (squares sent)
        (if (empty? sent)
            '()
            (sentence (square (first sent)) (squares (bf sent)))
        )
)

(define (square num)
        (* num num))