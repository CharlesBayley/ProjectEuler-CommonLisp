;;;; Defines a multiset class based on:
;;;;   https://en.wikipedia.org/wiki/Multiset#Multiplicity_function

(defpackage :multiset
  (:use :common-lisp)
  (:shadow :intersection))

(in-package :multiset)

(defclass multiset ()
  ((internal-set :initarg :set
                 :initform nil
                 :accessor internal-set)
   (sorter :initarg :sorter
           :initform '<
           :accessor sorter)))

(defun list-to-multiset (tlist)
  (let ((ulist (remove-duplicates tlist)))
    ulist))

;; TODO: Add the functionality to convert input lists
;;       into multiset internal form lists.
;;       Ex: '(1 1 2 3) => '((1 2) (2 1) (3 1))
;;       Ex: '(a b c b c a a a) => '((a 4) (b 2) (c 2))
(defmethod initialize-instance :after ((set multiset) &key)
  (when (eql (internal-set set) nil)
        (setf (internal-set set) (list-to-multiset (internal-set set)))))

(defgeneric intersection (left-set right-set))

(defmethod intersection ((left-set multiset) (right-set multiset))
  (intersection (internal-set left-set)
                (internal-set right-set)))

(defmethod intersection ((left-set list) (right-set list)))

(setf ms (make-instance 'multiset
                        :set '(1 2 2 3 3))) ;temporary test variable
