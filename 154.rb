=begin

Question: Create Phone Number

Description:
  Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those
  numbers in the form of a phone number.

Example:
  createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"

  The returned format must be correct in order to complete this challenge.

  Don't forget the space after the closing parentheses!

=end

def create_phone_number(numbers)
  x = numbers.join
  "(#{x[0..2]}) #{x[3..5]}-#{x[6..-1]}"
end

=begin

Others' solutions:

def createPhoneNumber(array)
  '(%d%d%d) %d%d%d-%d%d%d%d' % array
end

def createPhoneNumber(digits)
  area_code, prefix, *extension = digits.each_slice(3).map(&:join)
  "(#{area_code}) #{prefix}-#{extension.join}"
end

def createPhoneNumber(numbers)
  numbers.join.gsub /(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3'
end

=end