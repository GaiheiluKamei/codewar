=begin

Question: Beginner Series #3 Sum of Numbers

Description:
  Given two integers a and b, which can be positive or negative, find the sum of all the integers
  between and including them and return it. If the two numbers are equal return a or b.

  Note: a and b are not ordered!

Examples (a, b) --> output (explanation):
  (1, 0) --> 1 (1 + 0 = 1)
  (1, 2) --> 3 (1 + 2 = 3)
  (0, 1) --> 1 (0 + 1 = 1)
  (1, 1) --> 1 (1 since both are same)
  (-1, 0) --> -1 (-1 + 0 = -1)
  (-1, 2) --> 2 (-1 + 0 + 1 + 2 = 2)

  Your function should only return a number, not the explanation about how you get that number.

=end

def get_sum(a,b)
  a > b ? (b..a).sum : a == b ? a : (a..b).sum
end

=begin

Others' solutions:

def get_sum(a,b)
  (a..b).reduce(:+) || (b..a).reduce(:+)
end

# splat 操作符 * 允许你将数组中的元素作为方法的参数传递。
def get_sum(a,b)
  Range.new(*[a, b].sort).reduce(:+)
end

def get_sum(a,b)
  ([a,b].min..[a,b].max).sum
end

=end