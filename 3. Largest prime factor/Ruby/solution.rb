# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def find_largest_prime_factor
  number = Math.sqrt(600851475143).ceil
  largest_prime = 0
  while(number > 0) do 
    number -= 1
    if (number % 2 != 0 && number % 3 != 0 && number % 5 != 0)
      largest_prime = number
    end
  end
end