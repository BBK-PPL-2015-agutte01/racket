#lang racket
(provide transform)

;(define (solve matrix)(matrix))

(define example (list (list 9 1 3 4 5 6 2 8 0)
                      (list 0 9 0 0 0 0 0 0 0)
                      (list 0 0 9 0 0 0 0 0 0)
                      (list 0 0 0 0 0 0 0 0 0)
                      (list 0 0 0 0 0 0 0 0 0)
                      (list 0 0 0 0 0 0 0 0 0)
                      (list 0 0 0 0 0 0 0 0 0)
                      (list 0 0 0 0 0 0 0 0 0)
                      (list 0 0 0 0 0 0 0 0 0)))

; Takes a list of list of integers, changes any zeros to sets
(define (transform matrix)
  
  (define (transform-helper matrix acc)
    (cond
      [(empty? matrix) acc]
      [(list? (car matrix)) 
       (cons (transform-helper (car matrix) acc) (transform-helper (cdr matrix) acc))]
      [(= 0 (car matrix)) 
       (cons (set '(1 2 3 4 5 6 7 8 9)) (transform-helper (cdr matrix) acc))]
      [else (cons (car matrix) (transform-helper (cdr matrix) acc))]))
  
  (transform-helper matrix '()))