puts (1..999).inject(0) {|sum, i|
  sum + ( [i%3, i%5].index(0) ? i : 0)
}
