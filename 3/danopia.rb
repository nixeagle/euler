def factors number
  2.upto(Math.sqrt(number).to_i) {|factor|
    next if (number % factor) != 0
    return [factor] + factors(number/factor)
  }
  return [1, number]
end

p factors(600851475143).max
