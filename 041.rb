=begin

Question: Powers of 2

Description:
  Complete the function that takes a non-negative integer n as input, and returns a list of
  all the powers of 2 with the exponent ranging from 0 to n ( inclusive ).

Examples:
  n = 0  ==> [1]        # [2^0]
  n = 1  ==> [1, 2]     # [2^0, 2^1]
  n = 2  ==> [1, 2, 4]  # [2^0, 2^1, 2^2]

=end

def powers_of_two(n)
  (0..n).map { |x| 2 ** x }
end

=begin

Others' solutions:

def powers_of_two(n)
  (0..n).collect{|x| 2**x }
end

=end