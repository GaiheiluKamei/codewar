=begin

Question: All Star Code Challenge #18

Description:
  Create a function that accepts a string and a single character, and returns an integer
  of the count of occurrences the 2nd argument is found in the first one.

  If no occurrences can be found, a count of 0 should be returned.

  ("Hello", "o")  ==>  1
  ("Hello", "l")  ==>  2
  ("", "z")       ==>  0

  str_count("Hello", 'o'); // returns 1
  str_count("Hello", 'l'); // returns 2
  str_count("", 'z'); // returns 0

Notes:
  1. The first argument can be an empty string
  2. In languages with no distinct character data type, the second argument
     will be a string of length 1

=end

def str_count(word, letter)
  word.count(letter)
end

=begin

Others' solutions:

def str_count(word, letter)
  a = word.split('').map { |x| x == letter }
  a.count(true)
end

def str_count(word, letter)
 word.split("").filter{ |a| a == letter }.length
end

# 在这行代码中，define_method 是一个元编程方法，它允许我们在运行时动态地定义方法。
# :str_count 是要定义的方法的名称，而 &:count 则是一种简写形式，表示调用对象的 count 方法。
#
# 当调用 str_count('hello', 'l') 时，它实际上会将参数 'hello' 和 'l' 传递给 count 方法。
# 这是因为 &:count 的符号表示法会将方法 count 转换为一个可以传递参数的块。因此，
# str_count('hello', 'l') 实际上等同于 'hello'.count('l')。
define_method :str_count, &:count

=end