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