;;;; Problem 1
;;;; Multiples of 3 and 5

(load "is-divisible.lisp")

(defvar *sum* 0)
(loop for i from 1 below 1000
      do (if (or (is-divisible i 3)
                 (is-divisible i 5))
             (incf *sum* i)))
(format t "~a~%" *sum*)
