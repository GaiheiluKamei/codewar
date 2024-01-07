=begin

Question: Detect Pangram

Description:
  A pangram is a sentence that contains every single letter of the alphabet at least once.
  For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram,
  because it uses the letters A-Z at least once (case is irrelevant).

  Given a string, detect whether or not it is a pangram. Return True if it is, False if not.
  Ignore numbers and punctuation.

=end

def pangram?(string)
  s = string.gsub(/\W+/, '').downcase
  return false if s.size < 26
  ('a'..'z').each { |i| return false unless s.include?(i) }
  true
end

=begin

Others' solutions:

def panagram?(string)
  ('a'..'z').all? { |x| string.downcase.include? (x) }
end

def panagram?(string)
   string.downcase.scan(/[a-z]/).uniq.size == 26
end

def panagram?(s)
  ("A".."Z").to_a - s.upcase.chars == []
end

# 在 Ruby 中，? 是一个用于创建包含单个字符的字符串的特殊语法。? 表示一个字符字面量，?a 即 'a'
def panagram?(string)
  ([*?a..?z] - string.downcase.chars).empty?
end

=end