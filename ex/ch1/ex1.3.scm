;; EXERCISE 1.3

;; square
(define (square x)
  (* x x))

;; sum-of-squares
(define (sum-of-squares x y)
  (+ (square x) (square y)))

;; sum-squares-of-two-largest
(define (sum-squares-of-two-largest x y z)
  (cond ((and (<= x y) (<= x z)) (sum-of-squares y z)) ; Case 1: x is the smallest
        ((<= y z) (sum-of-squares x z))                ; Case 2: x is not the smallest, and z is larger than y
        (else (sum-of-squares x y))))                  ; Case 3: x is not the smallest, and y is larger than z

;; some test cases
;; Test case 1: Numbers are in increasing order
(sum-squares-of-two-largest 1 2 3) ; Expected: 13 (2*2 + 3*3)

;; Test case 2: Numbers are in decreasing order
(sum-squares-of-two-largest 3 2 1) ; Expected: 13 (3*3 + 2*2)

;; Test case 3: Smallest number is in the middle
(sum-squares-of-two-largest 3 1 2) ; Expected: 13 (3*3 + 2*2)

;; Test case 4: Two numbers are equal and are the largest
(sum-squares-of-two-largest 2 4 4) ; Expected: 32 (4*4 + 4*4)

;; Test case 5: All numbers are equal
(sum-squares-of-two-largest 5 5 5) ; Expected: 50 (5*5 + 5*5)
