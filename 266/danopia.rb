def divisors number
  factors = []
  1.upto(Math.sqrt(number).to_i) {|factor|
    next if (number % factor) != 0
    factors << factor
    factors << number/factor
  }
  return factors.sort
end

def psr number
  Math.sqrt(number).to_i.downto(1) {|factor|
    return factor if (number % factor) == 0
  }
  return 1 # Is this right?
end

def primes_to cap
  (2..cap).to_a.select do |number|
    divisors(number).size == 2
  end
end

#p divisors(12) #=> [1, 2, 3, 4, 6, 12]
#p psr(3102) #=> 47
#p primes_to(15) #=> [2, 3, 5, 7, 11, 13]

product = primes_to(190).inject(1){|num, sum| sum * num}
p product
p psr(product)
