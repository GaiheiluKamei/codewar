=begin

Question: Summing a number's digits

Description:
  Write a function named sumDigits which takes a number as input and returns the sum of the
  absolute value of each of the number's decimal digits.

For example: (Input --> Output)
  10 --> 1
  99 --> 18
  -32 --> 5

=end

def sum_digits(number)
  number.abs.digits.sum
end

=begin

Others' solutions:

def sumDigits(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

=end