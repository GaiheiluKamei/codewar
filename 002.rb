=begin

Question: Return Negative

Description:
  In this simple assignment you are given a number and have to make it negative.
  But maybe the number is already negative?

  makeNegative(1);  # return -1
  makeNegative(-5); # return -5
  makeNegative(0);  # return 0

Notes
  1. The number can be negative already, in which case no change is required.
  2. Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.

=end

def make_negative(num)
  num > 0 ? -num : num
end

=begin

Others' solutions:

-num.abs

num.positive? ? -num : num

=end