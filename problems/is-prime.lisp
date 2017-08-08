;;;; Primality test

(load "is-divisible")

(defun is-prime (n)
  (if (< n 2)
      (return-from is-prime nil))
  (if (or (= n 2)
          (= n 3))
      (return-from is-prime t))
  (loop for i from 2 to (/ n 2)
        if (is-divisible n i)
        do (return-from is-prime nil))
  t)
