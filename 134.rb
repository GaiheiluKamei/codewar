=begin

Question: Find Number With Maximum Number Of Divisors

Description:
  Find the integer from a to b (included) with the greatest number of divisors. For example:
    divNum(15, 30)   ==> 24
    divNum(1, 2)     ==> 2
    divNum(0, 0)     ==> 0
    divNum(52, 156)  ==> 120

  If there are several numbers that have the same (maximum) number of divisors, the smallest among
  them should be returned. Return the string "Error" if a > b.

=end

# 思路到了这里，下面没做出来
# (a..b).map { |x| [x, Prime.prime_division(x)] }.max(2) { |a, b| a.last.sum(&:last) <=> b.last.sum(&:last) }

# 此为答案
require 'prime'
def divNum(a, b)
  return 'Error' if a > b
  (a..b).max_by{|n| n==1 ? 1 : n.prime_division.map{|p,c| c+1}.reduce(:*)}
end

=begin

Others' solutions:

def countDivisors(n)
  count = 0
  (1..(n**0.5)).each do |i|
    if n % i == 0
      if n / i == i
        count += 1
      else
        count += 2
      end
    end
  end
  count
end

def divNum(a, b)
  return "Error" if a > b
  aa, bb = 0, 0
  (a..b).each do |n|
    c = countDivisors(n)
    if c > aa
      aa, bb = c, n
    end
  end
  bb
end

=end