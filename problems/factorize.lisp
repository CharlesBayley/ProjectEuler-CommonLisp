;;;; Factorize numbers

(load "is-divisible.lisp")
(load "next-prime.lisp")

(defun factorize (n)
  (defvar factors nil)
  (loop for prime = 2 then (next-prime prime)
        while (not (= n 1))
        do (loop while (is-divisible n prime)
                 do (setf n (/ n prime))
                 do (setf factors (append factors `(,prime)))))
  factors)
