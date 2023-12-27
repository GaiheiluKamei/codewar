=begin

Question: Find the capitals

Description:
  Write a function that takes a single string (word) as argument. The function must return
  an ordered list containing the indexes of all capital letters in the string.

Examples:
  "CodEWaRs" --> [0,3,4,6]

=end
def capitals(word)
  word.chars.map.with_index { |e, i| [e,i] }.select { |x| x.first.match?(/[A-Z]/) }.map(&:last)
end

=begin

Others' solutions:

def capitals(word)
  (0...word.length).select {|i| word[i] =~ /[A-Z]/}
end

def capitals(word)
  word.chars.filter_map.with_index { |letter, i| i if ('A'..'Z').to_a.include?(letter) }
end

=end