;;;; Fibonacci

(defun fibonacci (n)
  (defvar value)
  (loop repeat (incf n)
        for x = 0 then y
        and y = 1 then (+ x y)
        do (setf value y))
  value)
