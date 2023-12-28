=begin

Question: Special Multiples

Description:
  Some numbers have the property to be divisible by 2 and 3. Other smaller subset of numbers
  have the property to be divisible by 2, 3 and 5. Another subset with less abundant numbers
  may be divisible by 2, 3, 5 and 7. These numbers have something in common: their prime factors
  are contiguous primes.

  Implement a function that finds the amount of numbers that have the first N primes as factors
  below a given limit.

  Let's see some cases:
    count_specMult(3, 200)  =>  6

  The first 3 primes are: 2, 3 and 5.

  And the found numbers below 200 are: 30, 60, 90, 120, 150, 180.

=end

def count_specMult(n,maxVal)
  primes = [2,3,5,7,11,13,17,19,23,29,31]
  (maxVal-1) / (primes.take(n).reduce(:*))
end

=begin

Others' solutions:

# 不知道有这个库
require 'prime'
def count_specMult(n, m)
  (m - 1) / Prime.first(n).reduce(&:*)
end

=end