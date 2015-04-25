#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Data structures for testing
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide example transform-result)

;; example of an unsolved sudoku grid
(define example (list (list 0 2 5 0 0 1 0 0 0)
                      (list 1 0 4 2 5 0 0 0 0)
                      (list 0 0 6 0 0 4 2 1 0)
                      (list 0 5 0 0 0 0 3 2 0)
                      (list 6 0 0 0 2 0 0 0 9)
                      (list 0 8 7 0 0 0 0 6 0)
                      (list 0 9 1 5 0 0 6 0 0)
                      (list 0 0 0 0 7 8 1 0 3)
                      (list 0 0 0 6 0 0 5 9 0)))

;; example of a transformed unsolved sudoku grid,
;; where all zeroes have been replaced with sets
(define transform-result (list (list 
                                 (set (list 1 2 3 4 5 6 7 8 9)) 2 5 
                                 (set (list 1 2 3 4 5 6 7 8 9)) 
                                 (set (list 1 2 3 4 5 6 7 8 9)) 1 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)))
                                (list 
                                 1 (set (list 1 2 3 4 5 6 7 8 9)) 4 2 5 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)))
                                (list 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)) 6 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)) 4 2 1 
                                 (set (list 1 2 3 4 5 6 7 8 9)))
                                (list 
                                 (set (list 1 2 3 4 5 6 7 8 9)) 5 
                                 (set (list 1 2 3 4 5 6 7 8 9)) 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)) 
                                 (set (list 1 2 3 4 5 6 7 8 9)) 3 2 
                                 (set (list 1 2 3 4 5 6 7 8 9)))
                                (list 
                                 6 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)) 2 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)) 9)
                                (list 
                                 (set (list 1 2 3 4 5 6 7 8 9)) 8 7 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)) 6
                                 (set (list 1 2 3 4 5 6 7 8 9)))
                                (list 
                                 (set (list 1 2 3 4 5 6 7 8 9)) 9 1 5 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)) 6 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)))
                                (list 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)) 7 8 1 
                                 (set (list 1 2 3 4 5 6 7 8 9)) 3)
                                (list 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)) 6 
                                 (set (list 1 2 3 4 5 6 7 8 9))
                                 (set (list 1 2 3 4 5 6 7 8 9)) 5 9
                                 (set (list 1 2 3 4 5 6 7 8 9)))))

