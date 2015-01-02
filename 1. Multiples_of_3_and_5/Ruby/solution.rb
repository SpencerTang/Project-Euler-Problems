# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def find_sum_of_multiples
  multiples = []
  1000.times do |x|
    if x % 3 == 0 || x % 5 == 0
      multiples << x
    end
  end
  multiples.inject{|x,y| x + y}
end