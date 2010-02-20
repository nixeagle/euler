def duckinator
seed1, seed2 = 1, 2
limit = 4_000_000

i = seed2
ret = 0
new = 0

if seed1 % 2 == 0
  ret += seed1
end

if seed2 % 2 == 0
  ret += seed2
end

while seed2 <= limit
  new = seed1+seed2
  seed1, seed2 = seed2, new
  ret += new if seed2 % 2 == 0
end
puts ret

end
