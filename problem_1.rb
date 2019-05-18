# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples
  list_of_multiples = [ ]
  1000.times do |number| 
    list_of_multiples << number if number % 3 == 0 || number % 5 == 0
  end
  list_of_multiples.inject(&:+)
end

sum_of_multiples