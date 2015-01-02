def find_sum_of_multiples
  multiples = []
  1000.times do |x|
    if x % 3 == 0 || x % 5 == 0
      multiples << x
    end
  end
  multiples.inject{|x,y| x + y}
end