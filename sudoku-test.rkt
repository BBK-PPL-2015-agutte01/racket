#lang racket
(require rackunit "sudoku.rkt" "data.rkt")

;; Testing transform
(check-equal? (transform example) transform-result)

;; Testing column on grid with sets
(check-equal? (column transform-result 0) (list 
                                           (set (list 1 2 3 4 5 6 7 8 9))
                                           1
                                           (set (list 1 2 3 4 5 6 7 8 9))
                                           (set (list 1 2 3 4 5 6 7 8 9))
                                           6
                                           (set (list 1 2 3 4 5 6 7 8 9))
                                           (set (list 1 2 3 4 5 6 7 8 9))
                                           (set (list 1 2 3 4 5 6 7 8 9))
                                           (set (list 1 2 3 4 5 6 7 8 9))))

;; Testing column on grid
(check-equal? (column example 8) (list 0 0 0 0 9 0 0 3 0))

;; Testing box on grid
(check-equal? (get-box example 0) (list (list 0 2 5)
                                        (list 1 0 4)
                                        (list 0 0 6)))
(check-equal? (get-box transform-result 4) 
              (list (list (set (list 1 2 3 4 5 6 7 8 9))
                          (set (list 1 2 3 4 5 6 7 8 9))
                          (set (list 1 2 3 4 5 6 7 8 9)))
                    (list (set (list 1 2 3 4 5 6 7 8 9))
                          2
                          (set (list 1 2 3 4 5 6 7 8 9)))
                    (list (set (list 1 2 3 4 5 6 7 8 9))
                          (set (list 1 2 3 4 5 6 7 8 9))
                          (set (list 1 2 3 4 5 6 7 8 9)))))

;; Testing exists on a row
(check-true (exists '(0 1 2 3 4 5 6 7 8) 1))
(check-false (exists '(0 1 2 3 4 5 6 7 8) 9))
;; Testing exists on a column with sets
(check-true (exists (column transform-result 0) 1))
(check-false (exists (column transform-result 0) 3))
;; Testing exists on a box with sets
(check-true (exists (get-box transform-result 7) 7))
(check-false (exists (get-box transform-result 7) 3))

                          
 
                                            