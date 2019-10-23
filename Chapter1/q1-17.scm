(define (double n)
    (+ n n))

(define (halve n)
    (/ n 2))

(define (logProduct a b)
    (cond ((= b 0) 0)
        ((even? b) (double (logProduct a (halve b)) ))
         ((odd? b) (+ a (logProduct a (- b 1))))))