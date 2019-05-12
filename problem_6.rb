def difference(limit)
  sum_of_squares = 0
  sum_of_limit = 0
  (1..limit).each do | n | 
    sum_of_squares += n * n
    sum_of_limit += n
  end

  (sum_of_limit * sum_of_limit) - sum_of_squares
end

puts difference(100)