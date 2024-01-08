=begin

Question: Simple multiplication

Description:
  This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.

=end

def simple_multiplication(number)
  number.even? ? number * 8 : number * 9
end

=begin

Others' solutions:

def simple_multiplication(number)
  number *= number.even? ? 8 : 9
end

=end