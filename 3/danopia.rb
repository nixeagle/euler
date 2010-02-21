def factors number
  2.upto((number/2).to_i) {|factor|
    next if (number % factor) != 0
    return [factor] + factors(number/factor)
  }
  return [number]
end

p factors(600851475143).max
