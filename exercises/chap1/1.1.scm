#lang simply-scheme
(define (print text) (display text)(newline))

(print 10) ;10
(print (+ 5 3 4)) ;12
(print (- 9 1)) ;8
(print (/ 6 2)) ;3
(print (+ (* 2 4) (- 4 6))) ;6
(define a 3) ;a
(define b (+ a 1)) ;b is 4
(print (+ a b (* a b))) ; (+ 3 4 12) => (+ 3 16) => 19
(= a b) ;#f
(print (if (and (> b a) (< b (* a b))) b a)) ;4
(print (cond ((= a 4) 6)  ; FALSE!!!!
             ((= b 4) (+ 6 7 a)) ; true: 16
             (else 25))) ; not run
(print (+ 2 (if (> b a) b a))) ; 6
(print (* (cond ((> a b) a) ;false
                ((< a b) b) ;true: 4
                (else -1))
                (+ a 1)))    ; (* 4 4) = 16


; CORRECT!