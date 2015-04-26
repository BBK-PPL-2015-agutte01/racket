#lang racket
(provide transform 
         column
         get-box)

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
(define (get-box matrix num)
  
  ; Return rows based on box number: 0-indexed
  (define (get-rows matrix num)
    (cond 
      [(= num 0) 
       (cons (list-ref matrix 0)
             (cons (list-ref matrix 1)
                   (cons
                    (list-ref matrix 2) '())))]
      [else 
       ; matrix minus last 3 rows
       (get-rows (cdr (cdr (cdr matrix))) (- num 1))]))
  
  ; Returns a subset of the elements in each row
  (define (reduce-rows matrix num)
    
    (define (reduce-helper matrix num acc)
      (cond
        [(empty? matrix) acc]
        [(list? (car matrix))
                (cons (reduce-helper (car matrix) num acc) 
                      (reduce-helper (cdr matrix) num acc))]
        [(= num 0)
         (cons (list-ref matrix 0)
               (cons (list-ref matrix 1)
                     (cons (list-ref matrix 2) acc)))]
        [else
         (reduce-helper (cdr (cdr (cdr matrix))) (- num 1) acc)]))

    (reduce-helper matrix num '()))
    
  (let ([which-rows (- (ceiling (/ (+ num 1) 3)) 1)])
    (let ([which-columns (modulo num 3)])
      (reduce-rows (get-rows matrix which-rows) which-columns))))


