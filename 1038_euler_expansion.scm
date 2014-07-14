(define (cont-frac-i n d k)
  (define (cf-iter2 i k-to-i)
    (if (> i 1)
      (cf-iter2 (- i 1) (/ (n i) (+ (d i) k-to-i)))
      k-to-i))
  (cf-iter2 k 0))

(define (e k)
  (+ 2.0
     (cont-frac-i (lambda (i) 1)
                  (lambda (i)
                    (if (= 2 (remainder i 3))
                      (* 2
                         (+ 1
                            (truncate (/ i 3))))
                      1)) 
                  k)))
