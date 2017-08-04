;;;; Problem 4
;;;; Largest palindrome product

(load "is-palindrome.lisp")

(defvar *products*
        (loop for i from 100 to 999
              append (loop for j from i to 999
                           collect (* i j))))
(sort *products* '>)
(defvar
  *largest-palindrome-product*
  (loop for product in *products*
        when (is-palindrome product) do (return product)))
(format t "~a~%" *largest-palindrome-product*)
