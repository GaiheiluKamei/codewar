=begin

Question: Reverse words

Description:
  Complete the function that accepts a string parameter, and reverses each word
  in the string. All spaces in the string should be retained.

Examples:
  "This is an example!" ==> "sihT si na !elpmaxe"
  "double  spaces"      ==> "elbuod  secaps"

=end

def reverse_words(str)
  str.split(/(\s+)/).each { |e| e.reverse! if !e.include?(' ') }.join
end

=begin

Others' solutions:

def reverse_words(str)
  str.gsub(/\S+/, &:reverse)
end

def reverse_words(str)
  str.split(/(\s+)/).map(&:reverse).join
end

=end