=begin

Question: Scramblies

Description:
  Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can
  be rearranged to match str2, otherwise returns false.

Notes:
  Only lower case letters will be used (a-z). No punctuation or digits will be included.
  Performance needs to be considered.

Examples:
  scramble('rkqodlw', 'world') ==> True
  scramble('cedewaraaossoqqyt', 'codewars') ==> True
  scramble('katas', 'steak') ==> False

=end

def scramble(s1,s2)
  res = s1.chars.reduce(Hash.new(0)) { |acc, e| acc[e] += 1; acc }
  s2.each_char do |c|
    return false unless res[c] && res[c] != 0
    res[c] -= 1
  end

  true
end

=begin

Others' solutions:

# Performance not good
def scramble(s1,s2)
  s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
end

def scramble(s1,s2)
  s2.chars.all? { |c| s1.sub!(c, '') }
end

def scramble(s1,s2)
  "abcdefghijklmnopqrstuvwxyz".each_char {|a|
    return false if s1.count(a) < s2.count(a)
  }
  true
end

def scramble(s1,s2)
  ('a'..'z').all? { |c| s1.count(c) >= s2.count(c) }
end

=end