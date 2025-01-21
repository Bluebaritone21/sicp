#lang simply-scheme

;Define a procedure that takes three numbers as arguments and returns the sum of the squares of the 
;two larger numbers

(define (sum-square-largest num1 num2 num3)
        (largest num1 num2 num3)
)


(define (largest . nums)
  (cond ((empty? nums) '())      ; if it's empty, don't do anything
        ((= (length nums) 1) (car nums))     ; our work here is done.
        ((< (car nums) (cadr nums)) (apply largest (cdr nums))) ; the number is smaller than its neighbor, so we can safely get rid of it.
        ((= (car nums) (cadr nums)) (apply largest (cdr nums))) ; the number is the same as its neighbor, so we can get rid of it.
        ((> (car nums) (cadr nums)) (apply largest (append (cdr nums) (list (car nums))))))) ; the number is larger than its neighbor, so we will shove it to the end.
