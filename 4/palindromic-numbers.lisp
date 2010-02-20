(in-package :euler)

(defun palindromep (object)
  "True when OBJECT is the same printed reversed."
  (string= (princ-to-string object)
           (reverse (princ-to-string object))))

(defun solution-4/1 ()
  "Not the fastest solution by far, but finishes under 10 seconds. (~3)"
    (car (sort (remove-if (complement #'palindromep)
                          (remove-duplicates
                           (map-product #'* (range 100 999) (range 100 999))))
               #'>)))