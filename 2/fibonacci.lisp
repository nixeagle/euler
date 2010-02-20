(in-package :euler)

(defun next-fibonacci (first second)
  "Next number in the sequence is the last two added."
  (+ first second))

(defun sum-fibs (&key (predicate #'evenp) (old 1) (current 2) (total 2)
                      (upto 4000000))
  "Sum fibonacci numbers UPTO using PREDICATE."
  (declare (optimize (speed 3) (debug 2)))
  (if (< upto current)
      total
      (sum-fibs :predicate predicate :old current :current (+ old current)
                :upto upto :total (if (funcall predicate current)
                                      (+ total current)
                                      total))))
