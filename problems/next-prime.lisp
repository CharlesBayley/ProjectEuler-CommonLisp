;;;; Finds the very next prime >n

(load "is-prime.lisp")

(defun next-prime (n)
  (loop for i = (incf n)
        if (is-prime i)
        do (return-from next-prime i)))
