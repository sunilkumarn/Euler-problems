def palindrome?(number)
  number.to_s == number.to_s.reverse
end

def largest_palindrome
  palindromes = []
  (1..999).each do |x|
    (1..999).each do |y|
      if palindrome?(x * y)
      	palindromes << (x * y)
      end
    end
  end
  palindromes.max
end

puts largest_palindrome
