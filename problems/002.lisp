;;;; Problem 2
;;;; Even Fibonacci numbers

(load "fibonacci.lisp")
(load "is-divisible.lisp")

(defvar *sum* 0)
(loop for i = 1 then (incf i)
      and fib = (fibonacci i)
      while (<= fib 4000000)
      do (if (is-divisible fib 2)
             (incf *sum* fib)))
(format t "~a~%" *sum*)
