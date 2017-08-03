;;;; Problem 1
;;;; Multiples of 3 and 5

(defun is-divisible (n divisor)
  (= (mod n divisor) 0))

(defvar *sum* 0)
(loop for i from 1 below 1000
      do (if (or (is-divisible i 3)
                 (is-divisible i 5))
             (setf *sum* (+ *sum* i))))
(format t "~a~%" *sum*)
