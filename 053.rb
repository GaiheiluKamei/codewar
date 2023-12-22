=begin

Question: Rot13

Description:
  ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters
  after it in the alphabet. ROT13 is an example of the Caesar cipher.

  Create a function that takes a string and returns the string ciphered with Rot13. If there are
  numbers or special characters included in the string, they should be returned as they are. Only
  letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

=end

def rot13(string)
  up = ('a'..'z').to_a
  down = ('A'..'Z').to_a

  string.each_char.map { |c| up.include?(c) ? up[up.index(c)-13] : down.include?(c) ? down[down.index(c)-13] : c}.join
end

=begin

Others' solutions:

def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

# rotate 方法 和 tr 方法
def rot13(string)
  origin = ('a'..'z').to_a.join + ('A'..'Z').to_a.join
  cipher = ('a'..'z').to_a.rotate(13).join + ('A'..'Z').to_a.rotate(13).join
  string.tr(origin, cipher)
end

=end