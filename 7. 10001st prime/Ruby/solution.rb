
  def find_prime(n)
    primes = []
    count = 2
    while primes.length < n
      if prime?(count)
        primes << count
      end
      count += 1
    end
    primes.last
  end

  def prime?(n)
    non_primes = (2..Math.sqrt(n)).select{|x| n % x == 0}
    non_primes.empty?
  end