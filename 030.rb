=begin

Question: Count the divisors of a number

Description:
  Count the number of divisors of a positive integer n.
  Random tests go up to n = 500000.

Example:
  4 --> 3 // we have 3 divisors - 1, 2 and 4
  5 --> 2 // we have 2 divisors - 1 and 5
  12 --> 6 // we have 6 divisors - 1, 2, 3, 4, 6 and 12
  30 --> 8 // we have 8 divisors - 1, 2, 3, 5, 6, 10, 15 and 30

  Note you should only return a number, the count of divisors. The numbers
  between parentheses are shown only for you to see which numbers are counted in each case.
=end

# **
def divisors(n)
  count = 0
  (1..n).each { |num| count += 1 if n % num == 0 }
  count
end

=begin

Others' solutions:

def divisors(n)
  (1..n).count { |d| n % d == 0 }
end

require 'prime'
def divisors(n)
  n.prime_division.map { |_, e| e+1 }.reduce(1, :*)
end

def divisors(n)
  1.upto(n/2).map {|i| 1 if n % i == 0} .compact.count + 1
end

=end