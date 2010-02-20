ret = 0
1.upto(999) do |i|
  ret+=i if ( (i%3==0)||(i%5==0) )
end
puts ret
