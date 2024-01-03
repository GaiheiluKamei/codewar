=begin

Question: Multiplication table

Description:
  Your task, is to create N×N multiplication table, of size provided in parameter.
  For example, when given size is 3:

  1 2 3
  2 4 6
  3 6 9

  For the given example, the return value should be: [[1,2,3],[2,4,6],[3,6,9]]

=end

def multiplication_table(size)
  (1..size).map { |i| (1..size).map { |j| j*i } }
end

=begin

Others' solutions:

def multiplicationTable(size)
  (1..size).map { |i| (i..size * i).step(i).to_a }
end

def multiplication_table(size)
  Array.new(size) { |r| Array.new(size) { | c | r.succ * c.succ } }
end

=end