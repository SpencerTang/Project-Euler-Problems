# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

  def find_pythagorean_triplet
    number = 500
    a = 1
    b = 1
    (1..number).each do |x|
      (1..number).each do |y|
        if (x + y) + Math.sqrt(x ** 2 + y **2) == 1000 
          a = x
          b = y
        end
      end
    end
    c = Math.sqrt(a ** 2 + b **2).to_i
    c * a * b
  end