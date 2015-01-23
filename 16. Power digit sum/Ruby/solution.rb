# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

def sum_digits
  number = 2 ** 1000
  number.to_s.split("").inject{|x,y| x.to_i + y.to_i}
end