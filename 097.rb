=begin

Question: Exclamation marks series #11: Replace all vowel to exclamation mark in the sentence

Description:
  Replace all vowel to exclamation mark in the sentence. aeiouAEIOU is vowel.

Examples:
  replace("Hi!") === "H!!"
  replace("!Hi! Hi!") === "!H!! H!!"
  replace("aeiou") === "!!!!!"
  replace("ABCDE") === "!BCD!"

=end

def replace(s)
  s.gsub(/[aeiou]/i, '!')
end

=begin

Others' solutions:

def replace(s)
	s.tr("aeiouAEIOU'","!")
end

=end