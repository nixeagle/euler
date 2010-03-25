import math
import cmath
import types
import string

def problem1():
        for number in xrange(1000):
            if not number % 3 or not number % 5:
                yield number

print sum(problem1())