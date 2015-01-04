# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

  def largest_palindrome
    palin = 0
    (100..999).each do |x|
      (100..999).each do |y|
        palin = x * y if is_palindrome?(x * y) && (x * y) > palin
      end
    end
    palin
  end

  def is_palindrome?(n)
    n == n.to_s.reverse.to_i
  end