# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.


def largest_collatz
  collatz = {0 => 0}
  (2..1000000).each do |x|
    make_collatz(x,collatz)
  end
 collatz.sort_by{|x,y| y}.last.first
end

def make_collatz(n,collatz) 
 original = n
 collatz_count = 0
 while n != 1
   if collatz[n]
    return collatz[original] = collatz[n] + collatz_count 
   elsif n.even?
    n = n/2
   elsif n.odd?
    n = (3 * n) + 1
   end
   collatz_count += 1
 end
 collatz[original] = collatz_count
end