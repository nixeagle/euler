(in-package :nisp.euler)

(defun sum-integers-if (predicate start end &optional (step 1))
  "Sum numbers satisfying PREDICATE from START to END."
  (iterate (for n :from start :to end :by step)
           (when (funcall predicate n)
             (sum n :into result))
           (declare (fixnum result))    ; Help the compiler optimize.
           (finally (return result))))

(defun solution-1/1 ()
  "Call `sum-integers-if' after we compose predicate.

This is a purely functional way of solving this problem."
  (sum-integers-if (disjoin (compose (curry #'= 0) (rcurry #'mod 3))
                            (compose (curry #'= 0) (rcurry #'mod 5)))
                   0 999))

(defun solution-1/2 ()
  "Use a local function definition for the predicate."
  (flet ((validp (n)
           (or (= 0 (mod n 3)) (= 0 (mod n 5)))))
    (sum-integers-if #'validp 0 999)))
