#lang simply-scheme

;Define a procedure that takes three numbers as arguments and returns the sum of the squares of the 
;two larger numbers

(define (sum-square-largest num1 num2 num3)
        (largest num1 num2 num3)
)


(define (largest . nums) (cond ((empty? nums) '())
                               ((= (length nums) 1) (car nums))
                               ((< (car nums) (cadr nums)) (largest (cdr nums)))
                               ((> (car nums) (cadr nums)) (largest (append (cdr nums) 
                                                                     (list (car nums)))))
                         ))
