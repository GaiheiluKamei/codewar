=begin

Question: Split Strings

Description:
  Complete the solution so that it splits the string into pairs of two characters. If the string
  contains an odd number of characters then it should replace the missing second character of the
  final pair with an underscore ('_').

Examples:
  * 'abc' =>  ['ab', 'c_']
  * 'abcdef' => ['ab', 'cd', 'ef']

=end

def solution_143(str)
  str.size.odd? ? "#{str}_".scan(/\w{2}/) : str.scan(/\w{2}/)
end

=begin

Others' solutions:

# 真不错
def solution str
  (str + '_').scan /../
end

def solution(str)
  str.chars.each_slice(2).map { |d| d.length == 2 ? d.join : d.join+'_' }
end

=end