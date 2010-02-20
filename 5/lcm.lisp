(in-package :euler)

(defun solution-5/1 ()
  "Being asked what the smallest number that the range 1..20 all can
evenly divide into is the same as being asked what the least common
multiple is. Common lisp has a built in function `lcm' that we can use for
this purpose.

The solution is typed out 1..20 instead of using some looping construct
just so it is clear what is going on to anyone not well versed in lisp."
  (lcm 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20))