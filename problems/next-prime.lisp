;;;; Finds the very next prime >n

(load "is-prime.lisp")

(defun next-prime (n)
  (loop for i = (incf n)
        do (if (is-prime i)
               (return-from next-prime i))))
