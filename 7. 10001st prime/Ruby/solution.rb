# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

  def nth_prime(n)
    count = 2
    prime_count = 0
    prime = 2
    while prime_count < n
      if prime? count 
        prime = count
        prime_count += 1
      end
      count += 1
    end
    prime
  end

  def prime?(n)
    non_primes = (2..Math.sqrt(n)).collect do |x|
      if n % x == 0
        return false
      end
    end
    true
  end