;Funtional Programming Assignment

; 1) reverse-general

;define list L
(define L
  '(a b c)
)
(display L)
(newline)

;function reverse-general using recursion
    ;parameter - a list
;the result is a reversed version of the input list

(define (reverse-general L)
    (if (null? L)
        '()
        (append (reverse-general (cdr L)) (list (car L)))
    )
)

(display (reverse-general '(a b c))) ;check
(newline)
(display (reverse-general '(a b ()))) ;check
(newline)
