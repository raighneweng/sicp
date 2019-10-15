(define (addTopin3 number1 number2 number3)
    (cond ((and (< number1 number2)(< number1 number3)) (+ number2 number3)) 
           ((and (< number2 number1)(< number2 number3)) (+ number1 number3))
           (else (+ number1 number2))
    )
)

(addTopin3 1 2 3)