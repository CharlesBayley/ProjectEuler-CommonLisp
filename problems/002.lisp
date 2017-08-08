;;;; Problem 2
;;;; Even Fibonacci numbers

(load "fibonacci")
(load "is-divisible")

(defvar *sum* 0)
(loop for i = 1 then (incf i)
      and fib = (fibonacci i)
      while (<= fib 4000000)
      if (is-divisible fib 2)
      do (incf *sum* fib))
(format t "~a~%" *sum*)
