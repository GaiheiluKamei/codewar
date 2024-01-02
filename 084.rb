=begin

Question: Anagram Detection

Description:
  An anagram is the result of rearranging the letters of a word to produce a new
  word (see wikipedia: https://en.wikipedia.org/wiki/Anagram).

  Note: anagrams are case insensitive

  Complete the function to return true if the two arguments given are anagrams of each other;
  return false otherwise.

Examples:
  "foefet" is an anagram of "toffee"
  "Buckethead" is an anagram of "DeathCubeK"

=end

def is_anagram(test, original)
  test.downcase.chars.reduce(Hash.new(0)) { |res, e| res[e] += 1; res } == original.downcase.chars.reduce(Hash.new(0)) { |res, e| res[e] += 1; res }
end

=begin

Others' solutions:

def is_anagram(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end

def is_anagram(test, original)
  test.length == original.length && (test.downcase.chars - original.downcase.chars).empty?
end

def is_anagram(test, original)
  original.downcase.sum == test.downcase.sum
end

=end