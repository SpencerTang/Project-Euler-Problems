# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

  def all_factors(n)
    (2..Math.sqrt(n)).collect do |x|
      if n % x == 0 
        [x, n / x]
      end
    end.compact.flatten
  end

  def is_prime?(n)
    all_factors(n).empty?
  end

  def all_prime_factors(n)
    all_factors(n).select{|x| x if is_prime?(x)}
  end
