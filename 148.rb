=begin

Question: Multiples of 3 or 5

Description:
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
  The sum of these multiples is 23.

  Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

  Additionally, if the number is negative, return 0.

Note: If the number is a multiple of both 3 and 5, only count it once.

  Courtesy of projecteuler.net (Problem 1: https://projecteuler.net/problem=1)

=end

def solution_148(number)
  (3...number).select { |i| i % 3 == 0 || i % 5 == 0 }.sum
end

=begin

Others' solutions:

def solution(n)
 1.upto(n-1).to_a.keep_if { |num| (num % 5 == 0) || (num % 3 == 0) }.reduce(:+)
end

=end