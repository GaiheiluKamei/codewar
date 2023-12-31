=begin

Question: Shortest Word

Description:
  Simple, given a string of words, return the length of the shortest word(s).

  String will never be empty and you do not need to account for different data types.

=end

def find_short(s)
  s.split.map(&:size).min
end

=begin

Others' solutions:

def find_short(s)
    s.split(' ').min_by(&:length).length
end

def find_short(string)
  string.split(" ").map(&:length).sort[0]
end

=end