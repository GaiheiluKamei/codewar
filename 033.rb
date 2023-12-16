=begin

Question: Sum The Strings

Description:
  Create a function that takes 2 integers in form of a string as an input, and outputs
  the sum (also as a string)

Example:
  "4",  "5" --> "9"
  "34", "5" --> "39"
  "", "" --> "0"
  "2", "" --> "2"
  "-5", "3" --> "-2"

=end

def sum_str(a, b)
  "#{a.to_i + b.to_i}"
end

=begin

Others' solutions:

def sum_str(*args)
  args.map(&:to_i).sum.to_s
end

def sum_str(a, b)
  [a, b].map(&:to_i).sum.to_s
end

=end