=begin

Question: Sum of positive

Description:
  You get an array of numbers, return the sum of all of the positives ones.

  Example [1,-4,7,12] => 1 + 7 + 12 = 20

Note: if there is nothing to sum, the sum is default to 0.

=end

def positive_sum(arr)
  arr.reject(&:negative?).sum
end

=begin

Others' solutions:

def positive_sum(arr)
  arr.select(&:positive?).inject(0,:+)
end

=end