=begin

Question: Build Tower

Description:
  Build a pyramid-shaped tower, as an array/list of strings, given a positive integer number
  of floors. A tower block is represented with "*" character.

  For example, a tower with 3 floors looks like this:

  [
    "  *  ",
    " *** ",
    "*****"
  ]

  And a tower with 6 floors looks like this:

  [
    "     *     ",
    "    ***    ",
    "   *****   ",
    "  *******  ",
    " ********* ",
    "***********"
  ]

=end

def tower_builder(n_floors)
  length = 2 * n_floors - 1

  (1..n_floors).reduce([]) do |result, e|
    half_space = (length - (2 * e - 1)) / 2
    result << " " * half_space + "*" * (2*e-1) + " " * half_space
  end
end

=begin

Others' solutions:

def tower_builder(n)
  (1..n).map do |i|
    space = ' ' * (n - i)
    stars = '*' * (i * 2 - 1)
    space + stars + space
  end
end

# ? 是 Ruby 中的一个特殊字符，用于表示单个字符的字面量。在这里，?* 表示一个包含单个星号字符的字符串。
# center 方法是 Ruby 字符串类的一个方法，用于将当前字符串居中对齐到指定的宽度，并在两侧填充空格以达到指定的宽度。
# string.center(width, padstr)
def tower_builder(n)
  n.times.map{|x|(?**(x*2+1)).center n*2-1}
end

def tower_builder(n)
  Array.new(n){|k| (' ' * (n - k - 1)) + ('*' * (2 * k + 1)) + (' ' * (n - k - 1))}
end

=end