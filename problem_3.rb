class Integer
	def is_a_prime?
		prime = true
		(2..self/2).each do |number|
			prime = false if (self % number == 0)
		end
		prime
	end
end

def highest_prime_factor
	target = 600851475143
	i = 3
	prime_factors = [ ]
	while (i <= target)
		if target % i == 0 and i.is_a_prime?
			prime_factors << i 
			target = target / i
		end
		puts target
		i = i+1
	end
	puts prime_factors.inspect
	prime_factors.max
end

puts highest_prime_factor
