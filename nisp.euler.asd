(asdf:defsystem :nisp.euler
  :serial t
  :components
  ((:file "package")
   (:module "1"
            :components
            ((:file "sum-integers")))
   (:module "3"
            :components
            ((:file "prime-factor")))

   (:module "5"
            :components
            ((:file "lcm")))))
