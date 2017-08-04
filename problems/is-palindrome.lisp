;;;; Check if a number is a palindrome

(defun is-palindrome (n)
  (defvar sn (write-to-string n))
  (setf sn (reverse sn))
  (= n (parse-integer sn)))
