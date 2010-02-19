ret = 0
(1..999).each do |i|
  ret+=i if ( (i%3.0==0)||(i%5.0==0) )
end
puts ret
