class Integer
  def is_a_prime?
    prime = true
    (2..self/2).each do |number|
      prime = false if (self % number == 0)
    end
    prime
  end
end

def nth_prime(n)
  i = 3
  prime_count = 0

  loop do
    prime_count += 1 if i.is_a_prime?
    break if (prime_count + 1) == n
    i += 2 
  end

  i
end

puts nth_prime(10001)


