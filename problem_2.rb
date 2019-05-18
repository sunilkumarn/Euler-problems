def fibonaci_series
  term_1, term_2 = 0, 1
  fib_series = [ ]

  sum = 0

  loop do
    sum = term_1 + term_2
    if sum > 4000000
      break
    else
      fib_series << sum 
      term_1 = term_2
      term_2 = sum 
    end
  end

  fib_series
end

def sum_of_even_fibanoci
  fibonaci_series.select { |number| number % 2 == 0 }.inject(&:+)
end

puts sum_of_even_fibanoci

