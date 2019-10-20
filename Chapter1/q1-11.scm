(define (f n)
    (if (< n 3)
        n
        (+ (f (- n 1))
            (* 2 (f (- n 2)))
            (* 3 (f (- n 3)))
        ))
    )


(define (f2 n)
    (f-iterm 2 1 0 0 n ))

(define (f-iterm a b c i n)
    (if (= i n)
        c
        (f-iterm  (+ a (* 2 b) (* 3 c))   ; new a
            a                       ; new b
            b                       ; new c
            (+ i 1)
            n
        )))