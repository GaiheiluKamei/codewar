=begin

Question: Simple Fun #111: Reverse Brackets

Description:
  You are given a string s that consists of English letters and brackets. It is guaranteed that
  the brackets in s form a regular bracket sequence.

  Your task is to reverse the strings in each pair of matching brackets, starting from the innermost
  one step by step(remove the brackets at the same time).

Examples:
  For s = "a(bc)de" the output should be "acbde".

Input/Output
  [input] string s

  A string consisting of English letters, punctuation marks, whitespace characters and brackets.
  It is guaranteed that parenthesis form a regular bracket sequence.

  Constraints: 5 ≤ x.length ≤ 100.

  [output] a string

=end

# 我的解决方案：错的，只通过部分测试
# 感觉一是可能应该用栈解决；二是可能应该用正则；但都没成功
# def reverse_parentheses(s)
#   stack = []
#   s.each_char.with_index do |char, i|
#     stack << i if char == "(" || char == ")"
#   end
#
#   if stack.size == 2
#     left_bracket = stack.first
#     right_bracket = stack.last
#     return s[0...left_bracket] + s[left_bracket+1...right_bracket].reverse + s[right_bracket+1..-1]
#   end
#
#   res = s[0...stack.first]
#   stack.each_with_index do |bracket, i|
#     middle_bracket = (stack.size-1)/2
#     if i != middle_bracket
#       res += s[stack[stack.size-2-i]+1...stack[stack.size-1-i]].reverse
#     else
#       res += s[stack[i]+1...stack[i+1]]
#     end
#   end
#
#   res + s[stack.last+1..-1]
#
# end

# 答案
# 以 "a(bcdefghijkl(mno)p)q" 为例，第一次循环时，这里的块参数 w 是整个匹配的字符串，即 "(mno)"
# 而 $1 存储的是第一个括号捕获的内容，即 "mno"，所以我们使用 $1 而不是块参数
# 另：题意我也没理解对，一开始看测试用例，以为是：如果只有一个括号，括号内的内容反转；但多层括号，最里层的括号内容不反转。
# 其实这样理解是错误的，题目作者一开始即说明了反转字符串，从最内层开始，而自己之所以从
# expect(reverse_parentheses("a(bcdefghijkl(mno)p)q")).to eq("apmnolkjihgfedcbq")
# 这个例子观察到以为 mno 作为最内层括号的字符串没有饭庄，是因为有两层括号，反转两次相当于没反转
def reverse_parentheses(str)
  while str.include?("(")
    str.gsub!(/\((\w+)\)/) { |w| $1.reverse }
  end

  str
end

=begin

Others' solutions:

# 1.
def reverse_parentheses(s)

  x = s.count( "(" )

  x.times do
    left = inner_most_left = s.rindex( "(" ) # 找到最右边的左括号的索引
    right = inner_most_right = s[left..-1].index( ")" ) + left # 找到与最右边的左括号匹配的右括号的索引

    s[ left..right ] = s[ left + 1..right - 1 ].reverse # 将括号内的内容进行反转

  end

  return s

end

# 2.
# "a(bc)de"
def reverse_parentheses(s)
    parts = ['']
    s.each_char{ |c|
        if c=='('
            parts << '' # 如果当前字符是左括号，在数组中添加一个空字符串，用于存储括号内的字符串
        else
            c = parts.pop.reverse if c==')' # 如果当前字符串是右括号，从数组中取出最后一个字符串进行反转
            parts[-1] << c # 将当前字符添加到数组中最后一个字符串的末尾

        end
    }
    return parts[-1] # 返回数组中最后一个字符串，即括号内字符串反转后的结果
end

=end