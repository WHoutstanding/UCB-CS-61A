(define (over-or-under num1 num2) 
        (cond 
            ((< num1 num2) -1)
            ((= num1 num2) 0)
            ((> num1 num2) 1)))

(define (make-adder num) 
        ; (lambda (inc) (+ num inc)))
        (define (add inc) (+ num inc)) add)

(define (composed f g) 
        (define (helper x) (f (g x))) 
        helper)

(define (repeat f n) 
        (define (helper x cnt)
                (if (= n cnt)
                  x
                  (helper (f x) (+ cnt 1))))

        (define (cal x) (helper x  0)) 
        cal)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b)
        (if (zero? b)
            a
            (gcd b (modulo a b))))
