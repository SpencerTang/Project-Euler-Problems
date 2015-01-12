# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

  def sum_of_all_primes(n)
    sum = 0
    (1..n).each do |x|
      if prime? x
        sum += x
      end 
    end 
    sum
  end

  def prime?(n)
    (2..Math.sqrt(n)).each do |x|
      if n % x == 0
        return false
      end
    end
    true
  end