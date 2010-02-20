def duckinator
vals = [1, 2]

limit = 4_000_000

ret = 0

if vals[0] % 2 == 0
  ret += vals[0]
end

if vals[1] % 2 == 0
  ret += vals[1]
end

i = vals[1]
new = 0
while new <= limit
  new = vals[0]+vals[1]
  vals = [vals[1], new]
  ret += new if vals[1] % 2 == 0
end
puts ret

end
