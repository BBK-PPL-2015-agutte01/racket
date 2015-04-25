#lang racket
(require racket/include rackunit)
(include "sudoku.rkt")
(include "data.rkt")

(check-equal? (transform example) transform-result)
