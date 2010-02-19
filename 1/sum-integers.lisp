(in-package :nisp.euler)

(defun sum-integers (start end &key (test #'integerp) (step 1))
  "Sum numbers satisfying PREDICATE from START to END."
  (declare (optimize (safety 0) (debug 0) (speed 3) (space 0))
           (type fixnum start end step))
  (iterate (for n :from start :to end :by step)
           (when (funcall test n)
             (sum n :into result))
           (declare (type integer result))
           (finally (return result))))

(defun solution-1/1 ()
  "Call `sum-integers-if' after we compose predicate.

This is a purely functional way of solving this problem."
  (sum-integers 0 999 :test (disjoin (compose (curry #'= 0) (rcurry #'mod 3))
                            (compose (curry #'= 0) (rcurry #'mod 5)))))

(defun solution-1/2 ()
  "Use a local function definition for the predicate."
  (flet ((validp (n)
           (or (= 0 (mod n 3)) (= 0 (mod n 5)))))
    (sum-integers 0 999 :test #'validp)))

(defun sum-integers-recursive
    (current end &key (total 0) (step 1) (test #'integerp))
  "Sum numbers satisfying TEST from CURRENT to END."
  (declare (optimize (safety 0) (debug 0) (speed 3) (space 0)
                     (compilation-speed 0))
           (type fixnum current end step)
           (type integer total)
           (type function test))
  (if (<= current end)
      (sum-integers-recursive (the fixnum (1+ current)) end :step step :test test
                     :total (if (funcall test current)
                                (the integer (+ total current))
                                total))
      total))

(defun solution-1/3 ()
  "recursive form"
  (sum-integers-recursive
   0 999
   :test (disjoin (compose (curry #'= 0) (rcurry #'mod 3))
                  (compose (curry #'= 0) (rcurry #'mod 5)))))

(defun solution-1/4 ()
  "recursive form with local function def"
  (flet ((validp (n)
           (or (= 0 (mod n 3)) (= 0 (mod n 5)))))
    (sum-integers-recursive 0 999 :test #'validp)))