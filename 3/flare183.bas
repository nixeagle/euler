'Prime Solver
'Written by Jesse N. Richardson
'Tue March 2, 2010




'                                     600851475143
GETNUM:
PRINT "Enter an Integer between 2 and 700000000000 and"
PRINT "I will tell you if it is a Prime Number"
INPUT NUM
IF NUM - INT(NUM) <> 0 THEN GOTO GETNUM
IF NUM < 2 THEN GOTO GETNUM
IF NUM > 700000000000 THEN GOTO GETNUM
PRIME = 0
FOR TRY = 2 TO NUM / 2
        IF NUM / TRY <> INT(NUM / TRY) THEN GOTO TRYMORE
        PRINT "Factor Found:"; TRY
        PRIME = 1
TRYMORE:
NEXT TRY
IF PRIME = 1 THEN GOTO NOTPRIME
PRINT "Number is Prime!"
GOTO DONE
NOTPRIME:
PRINT "Sorry, Number is not prime."
DONE:
END

