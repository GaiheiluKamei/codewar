=begin

Question: Descending Order

Description:
  Your task is to make a function that can take any non-negative integer as an argument and
  return it with its digits in descending order. Essentially, rearrange the digits to create
  the highest possible number.

Examples:
  Input: 42145 Output: 54421
  Input: 145263 Output: 654321
  Input: 123456789 Output: 987654321

=end

def descending_order(n)
  n.digits.sort.reverse.join.to_i
end

=begin

Others' solutions:

def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

def descending_order(n)
  n.to_s.scan(/./).sort.reverse.join.to_i
end

=end