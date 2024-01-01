=begin

Question: Small enough? - Beginner

Description:
  You will be given an array and a limit value. You must check that all values in the
  array are below or equal to the limit value. If they are, return true. Else, return false.

  You can assume all values in the array are numbers.

=end

def small_enough(a, limit)
  a.all? { |e| e <= limit }
end

=begin

Others' solutions:

def small_enough(a, limit)
  a.max <= limit
end

# ..limit 等价于 nil..limit
def small_enough(a, limit)
  a.all?(..limit)
end

=end