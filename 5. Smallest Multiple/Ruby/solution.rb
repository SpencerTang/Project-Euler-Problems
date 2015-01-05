# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


  def lowest_common_multiple(n)
    distinct_primes = []
    prime_numbers = (2..n).select{|x| is_prime(x)}
    prime_numbers.each do |x|
      count = 1
      primes = x
      while(primes < 20) do 
        if x ** count > primes 
          primes = x ** count
        end
        count += 1
      end
      distinct_primes << primes / x
    end
    distinct_primes
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


