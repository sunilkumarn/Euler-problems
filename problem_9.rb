def pythagorus_triplet
  max, product = 500, 0

  for a in (1..max)
    for b in (a..max)
      for c in (b..max)
        if a**2 + b**2 == c**2 and a+b+c == 1000
          product =  a * b * c
          break
        end
      end
    end
  end

  product
end

puts pythagorus_triplet