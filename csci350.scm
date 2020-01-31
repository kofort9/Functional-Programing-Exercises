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
    ((list? (car L)) (+ (sum-up-numbers-simple (cdr L))))
    ((not(number? (car L))) (sum-up-numbers-simple (cdr L)))
    (else (+ (car L) (sum-up-numbers-simple (cdr L))))
  )
)

;Test cases
(display (sum-up-numbers-simple '())) ;check
(newline)
(display (sum-up-numbers-simple '(100 200))) ;
(newline)
(display (sum-up-numbers-simple '(a b c))) ;
(newline)
(display (sum-up-numbers-simple '(100 a))) ;
(newline)
(display (sum-up-numbers-simple '(a 100))) ;check
(newline)
(display (sum-up-numbers-simple '(a 100 b 200 c 300 d))) ;check
(newline)
(display (sum-up-numbers-simple '(()))) ;check
(newline)
(display (sum-up-numbers-simple '((100)))) ;check
(newline)
(display (sum-up-numbers-simple  '(100 (200)))) ;check
(newline)
(display (sum-up-numbers-simple '(a 100 b (200) c 300 d))) ;check


; 3) sum-up-numbers-general
;function sum-up-numbers-general using recursion
    ;parameter - a list
;the result is the sum of all the numbers in the input list including nested list

(define (sum-up-numbers-general L)
  (cond
    ((null? L) 0)
    ((list? (car L)) (+ (sum-up-numbers-general (car L)) (sum-up-numbers-general (cdr L))))
    ((not(number? (car L))) (sum-up-numbers-general (cdr L)))
    (else (+ (car L) (sum-up-numbers-general (cdr L))))
  )
)

;Test cases
(display (sum-up-numbers-general '())) ;check
(newline)
(display (sum-up-numbers-general '(100))) ;check
(newline)
(display (sum-up-numbers-general '(100 200))) ;check
(newline)
(display (sum-up-numbers-general '(a))) ;check
(newline)
(display (sum-up-numbers-general '(a 100 b 200 c 300 d))) ;check
(newline)
(display (sum-up-numbers-general '(()))) ;check
(newline)
(display (sum-up-numbers-general '((100)))) ;check
(newline)
(display (sum-up-numbers-general  '(100 (200))))  ;check
(newline)
(display (sum-up-numbers-general '(a 100 b (200) c 300 d))) ;check
(newline)
(display (sum-up-numbers-general '(a 100 ((b ((200) c)) 300 d)))) ;check


; 4) min-above-min
    ; parameters are 2 list L1,L2
    ; find the minimum number in L1 that is less then the minumum in L2
    ; if there is no number in L2, return the minumum in L1
    ; if there is no number in L1 that is larger than the smallest  number in L2
        ; return #F

; finds the minumum in a list
(define (get-min L)
  (cond
    ((null? (cdr L)) (car L))
    ((< (car L) (get-min (cdr L))) (car L))
    (else (get-min (cdr L)))
  )
)

;test cases
;(display (get-min '())) ;this case will never be executed
(newline)                
(display (get-min '(3 4 2 9 3 8)))
(newline)
;(display (get-min '(a 100 b 200 c 300 d)))
(newline)
