=begin

Question: Count characters in your string

Description:
  The main idea is to count all the occurring characters in a string. If you have a string
  like "aba", then the result should be {'a': 2, 'b': 1}

  What if the string is empty? Then the result should be empty object literal, {}.

=end

# The website Ruby interpreter is 2.5; Ruby 2.7+ can directly use `s.chars.tally`
def count_chars(s)
  s.chars.map { |x| [x, s.count(x)] }.uniq.to_h
end

=begin

Others' solutions:

# 1. itself 是一个方法，用于返回调用它的对象本身。这意味着无论调用 itself 方法的对象是什么，它都会返回自身。
# 2. transform_values 方法是 Ruby 中 Hash 类的一个方法，用于根据给定的代码块转换哈希的值，并返回一个新的哈希
def count_chars(s)
  s.chars.group_by(&:itself).transform_values(&:count)
end

def count_chars(s)
  s.split('').reduce({}) do |memo, char|
    memo[char] = memo.fetch(char, 0) + 1
    memo
  end
end

# each_with_object 方法是 Ruby 中 Enumerable 模块的一个方法，它允许您在迭代集合的同时构建一个新的对象。
def count_chars(s)
  s.chars.uniq.each_with_object({}) { |c, h| h[c] = s.count(c) }
end

=end