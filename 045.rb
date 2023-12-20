=begin

Question: Isograms

Description:
  An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement
  a function that determines whether a string that contains only letters is an isogram. Assume
  the empty string is an isogram. Ignore letter case.

Example:
  isIsogram "Dermatoglyphics" = true
  isIsogram "moose" = false
  isIsogram "aba" = false

=end

def is_isogram(string)
  string.downcase.chars.uniq.size == string.size
end

=begin

Others' solutions:

def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end

=end