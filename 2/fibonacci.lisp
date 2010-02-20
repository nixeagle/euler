(in-package :euler)

(defun next-fibonacci (first second)
  "Next number in the sequence is the last two added."
  (+ first second))

(defun sum-fibs (&key (predicate #'integerp) (old 0) (current 1) (total 0)
                 (upto 4000000))
  "Sum fibonacci numbers UPTO using PREDICATE."
  (declare (optimize (speed 3) (debug 2)))
  (if (< upto current)
      total
      (sum-fibs :predicate predicate :old current :current (+ old current)
                :upto upto :total (if (funcall predicate current)
                                      (+ total current)
                                      total))))

(defun solution-3/1 ()
  (sum-fibs :predicate #'evenp
            :upto 4000000))