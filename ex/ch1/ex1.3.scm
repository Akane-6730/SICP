;;EXCERCISE 1.3

;; square
(define (square x) (* x x))

;; sum-squares-of-3
(define (sum-squares-of-3 x y z)
  (+ (square x)
     (square y)
     (square z)))

;; min
(define (min x y)
  (if (< x y)
      x
      y))

;; min-of-3
(define (min-of-3 x y z)
  (min x (min y z)))

;; sum-squares-of-two-largest
(define (sum-squares-of-two-largest x y z)
  (- (sum-squares-of-3 x y z)
     (square (min-of-3 x y z))))

;; some test cases
(sum-squares-of-two-largest 1 2 3)
(sum-squares-of-two-largest 2 1 3)
(sum-squares-of-two-largest 3 2 1)
(sum-squares-of-two-largest 5 5 5)
(sum-squares-of-two-largest -1 -2 -3)
(sum-squares-of-two-largest 0 0 0)
(sum-squares-of-two-largest 3 5 7)
