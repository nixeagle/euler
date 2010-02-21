answer = 1.upto(1000).to_a.inject(0) {|sum, i|
  sum + i**i
}
puts answer.to_s[-10,10]
