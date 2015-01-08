# sieve attempt

def find_prime(n)
  numbers = (2..n).map{|x| x}
  numbers.each_with_index do |number, index|
    numbers.each do |second_number|
      numbers.slice!(index) if second_number % number == 0
    end
  end
end
