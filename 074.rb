=begin

Question: Two Sum

Description:
  Write a function that takes an array of numbers (integers for the tests) and a target number.
  It should find two different items in the array that, when added together, give the target
  value. The indices of these items should then be returned in a tuple / list (depending on your
  language) like so: (index1, index2).

  For the purposes of this kata, some tests may have multiple answers; any valid solutions will
  be accepted.

  The input will always be valid (numbers will be an array of length 2 or greater, and all of the
  items will be numbers; target will always be the sum of two different items from that array).

  Based on: http://oj.leetcode.com/problems/two-sum/

  two_sum([1, 2, 3], 4) == {0, 2}

=end

def two_sum(numbers, target)
  numbers.each_with_index do |e, i|
    next if e > target

    (1..numbers.size-1).each do |j|
      return [i, j] if e + numbers[j] == target && i != j
    end
  end
end

=begin

Others' solutions:

def two_sum(numbers, target)
  pair = numbers.combination(2).find{ |(a,b)| a+b == target }
  [numbers.index(pair[0]), numbers.rindex(pair[1])]
end

=end