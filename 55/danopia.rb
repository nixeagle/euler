def palindromic? num
  num = num.to_s
  num == num.reverse
end

def lychrel? num
  50.times do
    num += num.to_s.reverse.to_i
    return false if palindromic? num
  end
  true
end

count = 0
1.upto 10_000 do |num|
  count += 1 if lychrel? num
end

p count
