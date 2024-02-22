=begin

Question: Which are in?

Description:
  Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1
  which are substrings of strings of a2.

Example:
  a1 = ["arp", "live", "strong"]
  a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
  returns ["arp", "live", "strong"]

  a1 = ["tarp", "mice", "bull"]
  a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
  returns []

Notes:
  Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.
  In Shell bash a1 and a2 are strings. The return is a string where words are separated by commas.
  Beware: In some languages r must be without duplicates.

=end

def in_array(array1, array2)
  res = []
  array1.each do |i|
    array2.each do |j|
      if j.match?(i)
        res << i
        break
      end
    end
  end

  res.sort
end

=begin

Others' solutions:

def in_array(array1, array2)
  array1.select{|s| array2.any?{|w| w.include?(s) } }.sort
end

=end