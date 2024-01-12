=begin

Question: String -> N iterations -> String

Description:
  We have a string s
  We have a number n

  Here is a function that takes your string, concatenates the even-indexed chars to the front,
  odd-indexed chars to the back.

Examples:
  s = "Wow Example!"
  result = "WwEapeo xml!"
  s = "I'm JomoPipi"
  result = "ImJm ii' ooPp"

The Task:
  return the result of the string after applying the function to it n times.
  example where s = "qwertyuio" and n = 2:

  after 1 iteration  s = "qetuowryi"
  after 2 iterations s = "qtorieuwy"
  return "qtorieuwy"

Note:
  there's a lot of tests, big strings, and n is greater than a billion
  so be ready to optimize.

=end

# 第一次实现，测试通过，但对于 Large 测试，报错：Execution Timed Out (12000 ms)
def jumbled_string(s, n)
  n.times do
    s = s.split('').each_with_index.partition { |e, i| i.even? }.flatten.reject { |x| x.is_a? Integer }.join
  end
  s
end

# 以索引的角度分析：
# ---
# 1 和 2 个数字，0 次
# 3 和 4 个数字，2 次
# 5 和 6 个数字，4 次
# 7 和 8 个数字，3 次
# 9 和 10 个数字， 6 次
# ---
# 1. 奇数和偶数个数字，需要的次数是一样的，因为有偶数个数字，最后一个数字的索引是奇数，不用变，第一个索引 0 永远不变
# 2. ？
# 3. ... 没找出其它规律？
# ---
# 假设有 10 个数字，经过 6 次变形会返回到原来的字符串
# 0 1 2 3 4 5 6 7 8 9
# 0 2 4 6 8 1 3 5 7 9
# 0 4 8 3 7 2 6 1 5 9
# 0 8 7 6 5 4 3 2 1 9
# 0 7 5 3 1 8 6 4 2 9
# 0 5 1 6 2 7 3 8 4 9
# 0 1 2 3 4 5 6 7 8 9
# 假设有 9 个数字，经过 6 次变形会返回到原来的字符串
# 0 1 2 3 4 5 6 7 8
# 0 2 4 6 8 1 3 5 7
# 0 4 8 3 7 2 6 1 5
# 0 8 7 6 5 4 3 2 1
# 0 7 5 3 1 8 6 4 2
# 0 5 1 6 2 7 3 8 4
# 0 1 2 3 4 5 6 7 8
# 0. 假设有 8 个数字，经过 3 次变形会返回到原来的字符串
# 0 1 2 3 4 5 6 7
# 0 2 4 6 1 3 5 7
# 0 4 1 5 2 6 3 7
# 0 1 2 3 4 5 6 7
# 1. 假设有 7 个数字，经过 3 次变形会返回到原来的字符串
# 0 1 2 3 4 5 6
# 0 2 4 6 1 3 5
# 0 4 1 5 2 6 3
# 0 1 2 3 4 5 6
# 2. 假设有 6 个数字，经过 4 次变形会返回到原来的字符串
# 0 1 2 3 4 5
# 0 2 4 1 3 5
# 0 4 3 2 1 5
# 0 3 1 4 2 5
# 0 1 2 3 4 5
# 3. 假设有 5 个数字，经过 4 次变形会返回到原来的字符串
# 0 1 2 3 4
# 0 2 4 1 3
# 0 4 3 2 1
# 0 3 1 4 2
# 0 1 2 3 4
# 4. 假设有 4 个数字，经过 2 次变形会返回到原来的字符串
# 0 1 2 3
# 0 2 1 3
# 0 1 2 3
# 5. 假设有 3 个数字，经过 2 次变形会返回到原来的字符串
# 0 1 2
# 0 2 1
# 0 1 2
# 6. 假设有 2 个数字，经过 0 次变形会返回到原来的字符串
# 0 1
# 0 1
# 7. 假设有 1 个数字，经过 0 次变形会返回到原来的字符串
# 0
# 0

=begin

Others' solutions:

# 这个解法不错：不用去找出 “对于不同长度的字符串要经过多少次会变成自身”，但利用“它总会变成自身“ 的事实来减少计算次数
def jumbled_string(s, n)
  s = s.chars
  iterations = [s]

  loop do
    s = (0...s.size).step(2).map { |i| s[i] } + (1...s.size).step(2).map { |i| s[i] }
    break if s == iterations[0]
    iterations << s
  end

  iterations[n % iterations.size].join
end

# 解法 2
def jumbled_string(str, n)
  original = str.dup
  versions = []

  loop do
    str = str.chars.partition.with_index { |ch, idx| idx.even? }.join
    n   -= 1

    versions << str

    if str == original
      return versions[(n % versions.size)-1]
    end

    break if n == 0
  end

# 3.
def jumbled_string(s, n)
  iterations = [s]
  loop do
    s = s.chars.partition.with_index{|c, i| i.even?}.map(&:join).join
    return s if iterations.size == n
    if iterations.include? s
      return iterations[n % iterations.size]
    else
      iterations << s
    end
  end
end

  str
end

=end