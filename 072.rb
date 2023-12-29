=begin

Question: Find All the Possible Numbers Multiple of 3 with the Digits of a Positive Integer.

Description:
  Given a certain number, how many multiples of three could you obtain with its digits?

  Suppose that you have the number 362. The numbers that can be generated from it are:
    362 ----> 3, 6, 2, 36, 63, 62, 26, 32, 23, 236, 263, 326, 362, 623, 632

  But only:
    3, 6, 36, 63 are multiple of three.

  We need a function that can receive a number and may output in the following order:
    1. the amount of multiples
    2. the maximum multiple

  Let's see a case the number has a the digit 0 and repeated digits:
    6063 ----> 0, 3, 6, 30, 36, 60, 63, 66, 306, 360, 366, 603, 606, 630, 636, 660, 663, 3066, 3606, 3660, 6036, 6063, 6306, 6360, 6603, 6630

  In this case the multiples of three will be all except 0
    6063 ----> 3, 6, 30, 36, 60, 63, 66, 306, 360, 366, 603, 606, 630, 636, 660, 663, 3066, 3606, 3660, 6036, 6063, 6306, 6360, 6603, 6630

  The cases above for the function:
    find_mult_3(362) == [4, 63]
    find_mult_3(6063) == [25, 6630]

  In Javascript findMult_3(). The function will receive only positive integers (num > 0), and you
  don't have to worry for validating the entries.

Features of the random tests:
  Number of test = 100
  1000 ≤ num ≤ 100000000

=end

##################### 未解决，此为答案！
def find_mult_3(num)
  digits = num.digits
  combos = (1..digits.size).map { |i| digits.combination(i).select { |combo| combo.sum % 3 == 0 } }.reduce(:+)
  nums = combos.map { |combo| combo.permutation.reject { |perm| perm.first.zero? } }.reduce(:+).map(&:join).map(&:to_i).uniq
  [nums.count, nums.max]
end

=begin

Others' solutions:

def find_mult_3(num)
  digits = num.digits
  combos = (1..digits.size).map { |i| digits.combination(i).select { |combo| combo.sum % 3 == 0 } }.reduce(:+)
  nums = combos.map { |combo| combo.permutation.reject { |perm| perm.first.zero? } }.reduce(:+).map(&:join).map(&:to_i).uniq
  [nums.count, nums.max]
end

def find_mult_3(num)
  nums = num.to_s.chars
  all = (0..num.size).inject(Set.new){|sum,i| sum.merge nums.permutation(i+1).map{|k|k.join.to_i} }
  div3 = all.select{|l| (l%3) == 0 and !l.zero?}
  [div3.size, div3.max]
end

def find_mult_3(num)
  digits = num.digits
  numbers = (1..digits.size).map{|n| digits.combination(n).uniq.select{|x| (x.join.to_i%3).zero?}.map{|x| x.permutation.to_a}}.flatten(2).map{|x| x.join.to_i}.uniq - [0]
  [numbers.size, numbers.max]
end

=end