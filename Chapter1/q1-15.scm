(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
    (if (not (> (abs angle) 0.1))
        angle
        (p (sine (/ angle 3.0)))))


; 1
; (trace-entry p)
; [Entering #[compound-procedure 2 p]
;     Args: 4.9999999999999996e-2]
; [Entering #[compound-procedure 2 p]
;     Args: .1495]
; [Entering #[compound-procedure 2 p]
;     Args: .4351345505]
; [Entering #[compound-procedure 2 p]
;     Args: .9758465331678772]
; [Entering #[compound-procedure 2 p]
;     Args: -.7895631144708228]
;Value: -.39980345741334


; 2
O(logA)