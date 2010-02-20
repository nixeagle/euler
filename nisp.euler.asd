(asdf:defsystem :nisp.euler
  :serial t
  :components
  ((:file "package")
   (:module "utilities"
            :components
            ((:file "utils")))
   (:module "1"
            :components
            ((:file "sum-integers")))
   (:module "2"
            :components
            ((:file "fibonacci")))
   (:module "3"
            :components
            ((:file "prime-factor")))
   (:module "4"
            :components
            ((:file "palindromic-numbers")))
   (:module "5"
            :components
            ((:file "lcm")))))
