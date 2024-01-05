=begin

Question: Sum of a sequence

Description:
  Your task is to write a function which returns the sum of a sequence of integers.
  The sequence is defined by 3 non-negative values: begin, end, step.
  If begin value is greater than the end, your function should return 0. If end is not the
  result of an integer number of steps, then don't add it to the sum. See the 4th example below.

Examples:
  2,2,2 --> 2
  2,6,2 --> 12 (2 + 4 + 6)
  1,5,1 --> 15 (1 + 2 + 3 + 4 + 5)
  1,5,3  --> 5 (1 + 4)

=end

def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).sum
end

=begin

Others' solutions:

# 1. Could you explain why you chose reduce(0, :+) over reduce(:+) ?
# Because the second returns nil in this case:
# "If begin value is greater than the end, function should returns 0"
def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).reduce(0, :+)
end

# 2.
def sequence_sum(begin_number, end_number, step)
  return 0 if begin_number > end_number
  begin_number + sequence_sum(begin_number + step, end_number, step)
end

# 3. step 这种用法没见过：https://ruby-doc.org/3.2.2/Numeric.html#method-i-step
def sequence_sum(a, b, s)
  a.step(b, s).sum
end

=end