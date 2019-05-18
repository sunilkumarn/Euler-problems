class Integer
  def is_a_prime?
    prime = true
    (2..Math.sqrt(self)).each do |number|
      prime = false if (self % number == 0)
    end
    prime
  end
end

def sum_of_primes(limit)
  prime_states = Array.new(limit, true)
  summation = 0

  (0..limit).each_with_index do |num, i|
    next if [0,1,2].include? num
    if prime_states[i] and num.is_a_prime?
      (num..limit).step(num) { |multiple| prime_states[multiple] = false }
      summation += num
    end
  end

  summation + 2
end

puts sum_of_primes(2000000)