# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def lowest_common_multiple(n)
  distinct_primes = []
  prime_numbers = (2..n).select{|x| is_prime(x)}
  (2..20).each do |x|
    prime_numbers.each |y|
      if x % y == 0
        
      end
    end
  end
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


