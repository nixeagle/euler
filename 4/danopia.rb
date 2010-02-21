def palindrome? number
  number.to_s.reverse == number.to_s
end

palindromes = []
999.downto(100) do |num1|
  num1.downto(100) do |num2|
    product = num1*num2
    palindromes << product if palindrome? product
  end
end
p palindromes
p palindromes.max
