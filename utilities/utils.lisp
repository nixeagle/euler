(in-package :euler)

(defgeneric split-integer (integer)
  (:documentation "Split INTEGER up into component numbers.

Something like 123 becomes (1 2 3)."))
(defmethod split-integer ((string string))
  (map 'list (compose 'parse-integer 'string) string))
(defmethod split-integer ((input integer))
  (parse-integers (princ-to-string input)))

(defun expt-self (integer)
  "INTEGER^INTEGER"
  (expt integer integer))

;;; Not yet recursively defined ;)
(defun collatz-sequence (positive-fixnum)
  (declare (type positive-fixnum positive-fixnum))
  (iter (with n = positive-fixnum)
        (collect n)
        (until (= n 1))
        (if (evenp n)
            (setq n (/ n 2))
            (setq n (+ (* 3 n) 1)))))