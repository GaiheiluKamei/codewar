=begin

Question: Sum of the first nth term of Series

Description:
  Your task is to write a function which returns the sum of following series upto nth term(parameter).
  Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...

Rules:
  You need to round the answer to 2 decimal places and return it as String.
  If the given value is 0 then it should return 0.00
  You will only be given Natural Numbers as arguments.

Examples:
  1 --> 1 --> "1.00"
  2 --> 1 + 1/4 --> "1.25"
  5 --> 1 + 1/4 + 1/7 + 1/10 + 1/13 --> "1.57"

=end

def series_sum(n)
  "%.2f" % (1..n).map { |i| 1.fdiv(3*i - 2) }.sum
end

=begin

Others' solutions:

def series_sum(n)
  n == 0 ? "0.00" : '%.2f' % (0...n).map {|d| 1.0 / (1 + 3 * d)}.inject(:+)
end

=end