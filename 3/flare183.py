# Solution to Euler Problem #3
# Written Jesse N. Richardson

import math

def prime_factors(num, factor=2):
    """Return all prime factors (ordered) of num in a list"""
    if num <= 1:
        return []
    candidates = chain(xrange(factor, int(sqrt(num))+1), [num])
    next = first(x for x in candidates if (num%x == 0))
    return [next] + prime_factors(num/next, next)
 
def euler3():
    return max(prime_factors(317584931803))