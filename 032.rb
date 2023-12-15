=begin

Question: Find the stray number

Description:
  You are given an odd-length array of integers, in which all of them are the same, except
  for one single number.
  Complete the method which accepts such an array, and returns that single different number.

  The input array will always be valid! (odd-length >= 3)

Example:
  [1, 1, 2] ==> 2
  [17, 17, 3, 17, 17, 17, 17] ==> 3

=end

def stray (numbers)
  numbers.filter { |x| numbers.count(x) == 1 }.first
end

=begin

Others' solutions:

def stray(arr)
  arr.each { |x| return x if arr.count(x) == 1}
end

# known that A XOR A = 0 Exclusive disjunction is often used for bitwise operations.
# Examples: 1 XOR 1 = 0 1 XOR 0 = 1 0 XOR 1 = 1 0 XOR 0 = 0
# A^B^A=B
def stray (numbers)
  numbers.reduce(&:^)
end

# tally: https://ruby-doc.org/3.2.2/Enumerable.html#method-i-tally
# key: https://ruby-doc.org/3.2.2/Hash.html#method-i-key
def stray (numbers)
  numbers.tally.key(1)
end

def stray(numbers)
  numbers.min_by {|n| numbers.count(n) }
end

=end