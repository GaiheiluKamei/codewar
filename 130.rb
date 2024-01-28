=begin

Question: First non-repeating character

Description:
  Write a function named first_non_repeating_letter that takes a string input, and returns the first
  character that is not repeated anywhere in the string.

  For example, if given the input 'stress', the function should return 't', since the letter t only
  occurs once in the string, and occurs first in the string.

  As an added challenge, upper- and lowercase letters are considered the same character, but the
  function should return the correct case for the initial letter. For example, the input 'sTreSS'
  should return 'T'.

  If a string contains all repeating characters, it should return an empty string ("") or None -- see
  sample tests.

=end

def  first_non_repeating_letter(s)
  return '' if s.empty?
  filter = s.chars.map { |x| [x, s.downcase.count(x.downcase)] }.select { |x| x.last == 1 }
  filter.empty? ? '' : filter.first.first
end

=begin

Others' solutions:

# 性能较低
def  first_non_repeating_letter(s)
  s.chars.find { |c| s.downcase.count(c.downcase) == 1 } || ""
end

def  first_non_repeating_letter(s)
  s.each_char do |char|
    return char if s.downcase.count(char.downcase) < 2
  end
  ""
end

def first_non_repeating_letter(s)
    str = s.downcase
    str.each_char.with_index do |v, i|
        if str.index(v) == str.rindex(v)
            return s[i]
        end
    end
    ""
end

def  first_non_repeating_letter(s)
  s.chars{|a| return a if s.scan(/#{a}/i).size==1}
  ''
end

=end