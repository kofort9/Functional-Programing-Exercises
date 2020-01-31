;Funtional Programming Assignment

; 1) reverse-general
  ;function reverse-general using recursion
  ;parameter - a list
  ;the result is a reversed version of the input list

(define (reverse-general L)
        (if (null? L)
            '()
            (if (list? (car L))
                (append (reverse-general (cdr L)) (list (reverse-general (car L))))
                (append (reverse-general (cdr L)) (list (car L)))
            )
        )
)

;Test cases
(display (reverse-general '())) ;check
(newline)
(display (reverse-general '(a b c))) ;check
(newline)
(display (reverse-general '(a b ()))) ;check
(newline)
(display (reverse-general '((a b c)))) ;check
(newline)
(display (reverse-general '((a b c) (d e f)))) ;check
(newline)
(display (reverse-general '((a (b c) ((d e) f) g)))) ;check
(newline)
(display (reverse-general '((1 (2 3) (4 (a (b (c d)))))))) ;check

; 2) sum-up-numbers-simple
;function sum-up-numbers-simple using recursion
    ;parameter - a list
;the result is the sum of all the numbers in the input list

(define (sum-up-numbers-simple L)
  (cond
    ((null? L) 0)
    ((< 0 (car L)) (+ (car L) (sum-up-numbers-simple (cdr L))))
    (else (+ (car L) (sum-up-numbers-simple (cdr L))))
  )
)

;Test cases
(display (sum-up-numbers-simple '())) ;check
(newline)
(display (sum-up-numbers-simple '(100))) ;check
(newline)
(display (sum-up-numbers-simple '(100 200))) ;check
(newline)
(display (sum-up-numbers-simple '(a))) ;check
(newline)
(display (sum-up-numbers-simple '(a 100 b 200 c 300 d))) ;check
(newline)
(newline)
(display (sum-up-numbers-simple '(())))
