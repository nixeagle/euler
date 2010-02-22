num = 20

loop do
  if (11.upto(20).find {|i| num%i > 0 }) == nil
    puts num
    break
  end
  num += 20
  #puts num
  exit if num > 232_792_600
end
