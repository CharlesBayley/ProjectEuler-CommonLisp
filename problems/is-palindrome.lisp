;;;; Check if a number is a palindrome

(defun is-palindrome (n)
  (let ((sn (write-to-string n)))
    (setf sn (reverse sn))
    (= n (parse-integer sn))))
