seed1, seed2 = 1, 1
term = 0
num = 2

while 10**999 > term
  num += 1
  term = seed1 + seed2
  seed1, seed2 = seed2, term
end

puts num
puts term
