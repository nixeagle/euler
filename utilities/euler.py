# (C) 2010 zc00gii (zc00gii@gmail.com)
# Do not copy or modify without crediting
# MIT compatible

def prime_factors(n)
	w = 2
	a = []
	while w < n+1:
		if n%w == 0:
			n = n / w
			a.append[w]
		else:
			w = w + 1
def factors(n):
	w = 2
	a = []
	while w < sqrt(n):
		if n%w == 0 and w < sqrt(n):
			a.append[w]
		w = w + 1
def fibonacci(n):
	a, b = 0, 1
	while a < n:
		print a,
		a, b = b, a+b

def fibonacci_list(n):
	result = []
	a, b = 0, 1
	while a < n:
		result.append(a)
		a, b = b, a+b
	return result
def evenp(n):
	if n%2 == 0:
		return True
	elif n%2 == 1:
		return False
	else:
		print "Error: only integars are accepted"
def oddp(n):
	if n%2 == 1:
		return True
	elif n%2 == 0:
		return False
	else:
		print "Error: only integars are accepted"

