;;;; Problem 3
;;;; Largest prime factor

(load "factorize.lisp")

(format t "~a~%" (car (last (factorize 600851475143))))
