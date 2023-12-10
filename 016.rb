=begin

Question: Double Char

Description:
  Given a string, you have to return a string in which each character (case-sensitive) is repeated once.

Examples:
  * "String"      -> "SSttrriinngg"
  * "Hello World" -> "HHeelllloo  WWoorrlldd"
  * "1234!_ "     -> "11223344!!__  "

=end

def double_char(str)
  str.split('').map { |e| e * 2 }.join
end

=begin

Others' solutions:

# \1 表示正则表达式中的第一个捕获组
def double_char(str)
  str.gsub /(.)/, '\1\1'
end

# \0 表示正则表达式中的整个匹配项
def double_char(str)
  str.gsub(/./, '\0\0')
end

def double_char(str)
  str.chars.map{|x| x*2}.join
end

def double_char(str)
  str.chars.zip(str.chars).join
end

=end