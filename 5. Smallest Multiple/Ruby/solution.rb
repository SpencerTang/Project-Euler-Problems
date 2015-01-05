# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


  def lowest_common_multiple(n)
    prime_numbers = (2..n).select{|x| is_prime(x)}
    distinct_primes = prime_numbers.collect do |x|
      exponent = 1
      prime = x
      while(prime < n) do 
        if x ** exponent > prime
          prime = x ** exponent
        end
        exponent += 1
      end
      prime / x
    end
    distinct_primes.inject{|x,y| x * y}
  end

  def all_factors(n)
    factors = []
    (2..Math.sqrt(n)).each do |x|
      if n % x == 0
        factors << x 
        factors << n/x
      end
    end
    factors 
  end

  def is_prime(n)
    all_factors(n).empty?
  end


