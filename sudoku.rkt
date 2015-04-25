#lang racket
(provide transform 
         column)

;(define (solve matrix)(matrix))

;; Takes a list of list of integers, changes any zeroes to sets
(define (transform matrix)
  
  (define (transform-helper matrix acc)
    (cond
      [(empty? matrix) acc]
      [(list? (car matrix)) 
       (cons (transform-helper (car matrix) acc) (transform-helper (cdr matrix) acc))]
      [(= 0 (car matrix)) 
       (cons (set '(1 2 3 4 5 6 7 8 9)) (transform-helper (cdr matrix) acc))]
      [else 
       (cons (car matrix) (transform-helper (cdr matrix) acc))]))
  
  (transform-helper matrix '()))

;; Extracts a column from a grid, 0-indexed
(define (column matrix num)
  
  (define (column-helper matrix)
    (cond
      [(empty? matrix) '()]
      [(list? (car matrix)) 
       (cons (column-helper (car matrix)) (column-helper (cdr matrix)))] 
      [else 
       (list-ref matrix num)]))
  
  (column-helper matrix))

;; Extracts a box from a grid, 0-indexed
;; Boxes are numbered 0-8, top-left until bottom-right
(define (box matrix num)
 
  (define which-rows 0)  ; should this be let?
  (define which-columns 0)
  (define (rows matrix which-rows)
    (cond 
      [(= which-rows 0) '()]
      [(< which-rows 4) 
       (cons
        (columns (car matrix) which-columns))
        (rows (cdr matrix (- which-rows 1)))]
      [else
       (rows (cdr matrix (- which-rows 1)))]))
  
  (define (columns matrix which-columns)
    '())
  
  (rows matrix 0)
    )
