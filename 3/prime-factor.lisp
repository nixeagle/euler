(in-package :euler)

;;; This solves 3, but generates the primes as we go in the actual
;;; algorithm. There are faster methods then this for factoring but the
;;; euler problem is solved using this prime generator in about "0.011301"
;;; seconds (averaged over 1000 iterations) (refers to solution-3/1).
(let* ((current 2)
       (prime (list 2))
       (biggest-prime (car (last prime)))
       (cache ()))
  (locally (declare (type alexandria:positive-fixnum current biggest-prime))
    (defun get-known-primes ()
      prime)
    (defun get-biggest-cached-prime ()
      biggest-prime)
    (defun get-current-prime ()
      current)
    (defun get-cache ()
      cache)
    (defun set-primes (primes)
      (setq prime primes)
      (setq current (car (last primes))))
    (defun next-prime (&optional reset)
      (declare (optimize (speed 3) (debug 0) (safety 0) (compilation-speed 0)))
      (if reset
          (car (setq current 2
                     cache ()
                     biggest-prime 2
                     prime (list 2)))
        (progn
          (incf current)
          (if (not (compositep))
              (progn
                (push current cache)
                current)
              (next-prime)))))

    (defun update-list ()
      (setq biggest-prime (car cache))
      (setq prime (nconc prime (nreverse cache)))
      (setq cache ()))

    (defun compositep ()
      (declare (inline compositep)
               (optimize (speed 3) (debug 0) (safety 0) (compilation-speed 0)))
      (let ((half (the alexandria:positive-fixnum (ceiling (sqrt current)))))
        (declare (type alexandria:positive-fixnum half))
        (when (< biggest-prime half)
          (update-list))
        (loop for number in prime
           while (<= (the alexandria:positive-fixnum number) half)
           when (= (mod current number) 0) return t)))))

(defun prime-factors (number)
  "Lists prime factors of NUMBER."
  (iter (with number = number)
        (for x initially (next-prime t) then (next-prime))
        (when (zerop (mod number x))
          (setq number (/ number x))
          (collect x))
        (until (> x number))))

(defun solution-3/1 ()
  (car (last (prime-factors 600851475143))))