=begin

Question: Basic Mathematical Operations

Description:
  Your task is to create a function that does four basic mathematical operations.
  The function should take three arguments - operation(string/char), value1(number), value2(number).
  The function should return result of numbers after applying the chosen operation.

Examples:
  ('+', 4, 7) --> 11
  ('-', 15, 18) --> -3
  ('*', 5, 5) --> 25
  ('/', 49, 7) --> 7

=end

def basic_op(operator, value1, value2)
  value1.send(operator.to_sym, value2)
end

=begin

Others' solutions:

def basic_op(operator, value1, value2)
  eval("#{value1}#{operator}#{value2}")
end

def basic_op(operator, *values)
  values.reduce(operator)
end

def basic_op(o,a,b)
  eval [a,o,b].join
end

def basic_op(operator, value1, value2)
  value1.send(operator, value2)
end

=end