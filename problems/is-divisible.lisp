;;;; test divisibility of numbers

(defun is-divisible (n divisor)
  (= (mod n divisor) 0))
