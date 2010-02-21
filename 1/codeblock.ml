let i = ref 0;;
for x = 1 to 999 do
   if x mod 3 == 0
   then i := !i + x
   else if x mod 5 == 0
   then i := !i + x
done;;
print_endline (string_of_int !i);;
