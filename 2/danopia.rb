seed1, seed2 = 1, 1
sum = 0
term = 0

while 4_000_000 > term
  term = seed1 + seed2
  seed1, seed2 = seed2, term
  
  sum += term if term%2 == 0
end

puts sum
