=begin

Question: Round and Round

Description:
  Since there are lots of katas requiring you to round numbers to 2 decimal places, you decided to
  extract the method to ease out the process.

  And you can't even get this right!

  Quick, fix the bug before everyone in CodeWars notices that you can't even round a number correctly!

=end

# 我的解答是这个，但在 codewar 中的 Ruby 2.5 版本测试失败，本地 Ruby 3.2.2 测试通过，不知道为什么
def round_to_2_decimal_places n
  n.to_i + n.frac.round(2)
end

=begin

Others' solutions:

# 以下几个答案
def round_to_2_decimal_places n
    n.round(2,3)
end

def round_to_2_decimal_places n
    n.round(2, half: :up)
end

def round_to_2_decimal_places n
  n.round(2, :default)
end

def round_to_2_decimal_places(n)
  Rational(n).round(2)
end

=end