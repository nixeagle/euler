;TODO: Make this whole thing faster
(defun factors (n)
  (let (factors (list) (i 1))
    (loop
      (when (>= i (sqrt n))
      	(return-from factors (append factors (list n))))

      (if (= (mod n i) 0)
        (setq factors (append factors (list i))))
      (setq i (+ i 1)))))

(defun iscomposite (n)
  (let ((i 2))
    (loop 
      (when (> i (sqrt n))
        (return-from  iscomposite nil))
      (if (= (mod n i) 0)
        (return-from iscomposite t))
      (setq i (+ i 1)))))

(defun largestprimefactor (n)
   (let ((primefactors (list)) (sum 0))
      (loop for factor in (factors n) do
         (if (not (iscomposite factor))
           (setq primefactors (append primefactors (list factor)))))
      (return-from largestprimefactor (reduce #'max primefactors))))
      
        
  
