seeds = [1, 1]
sum = 0

while 0
  term = seeds.first + seeds.last
  seeds << term
  seeds.shift
  
  break if term > 4_000_000
  
  if term%2 == 0
    sum += term
  end
end

puts sum
