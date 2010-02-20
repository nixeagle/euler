(in-package :euler)

(defun sum-squares (&rest integers)
  "Square INTEGERS then add the results together."
  (reduce #'+ (mapcar (rcurry #'expt 2) integers)))
;;=> SUM-SQUARES
(defun square-sum (&rest integers)
  "Sum INTEGERS, then square it."
  (expt (apply #'+ integers) 2))
;;=> SQUARE-SUM

(defun solution-6/1 ()
  (let ((integers (range 1 100)))
    (- (apply #'square-sum integers)
       (apply #'sum-squares integers))))
