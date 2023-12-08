=begin

Question: Count of positives / sum of negatives

Description:
  Given an array of integers.

  Return an array, where the first element is the count of positives numbers and the
  second element is sum of negative numbers. 0 is neither positive nor negative.

  If the input is an empty array or is null, return an empty array.

Examples:
  For input [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15], you should return [10, -65].

=end

def count_positives_sum_negatives(lst)
  lst.empty? ? [] : [lst.filter(&:positive?).size, lst.reject(&:positive?).sum]
end

=begin

Others' solutions:

def count_positives_sum_negatives(lst)
  lst.empty? ? [] : [lst.count {|x| x > 0}, lst.keep_if {|y| y < 0}.sum]
end

=end