;;;; Problem 2
;;;; Even Fibonacci numbers

(load "is-divisible.lisp")

(defun fibonacci (n)
  (defvar value)
  (loop repeat (+ n 1)
        for x = 0 then y
        and y = 1 then (+ x y)
        do (setf value y))
  value)

(defvar *sum* 0)
(loop for i = 1 then (+ i 1)
      and fib = (fibonacci i)
      while (<= fib 4000000)
      do (if (is-divisible fib 2)
             (incf *sum* fib)))
(format t "~a~%" *sum*)
