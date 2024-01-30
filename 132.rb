=begin

Question: Simple Pig Latin

Description:
  Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation
  marks untouched.

Examples:
  pig_it('Pig latin is cool') # igPay atinlay siay oolcay
  pig_it('Hello world !')     # elloHay orldway !

=end

def pig_it text
  text.split.map { |i| [i[0], i[1..-1]] }.map(&:reverse).map(&:join).map { |i| i.chars.all?(/\w/) ? i + 'ay' : i }.join(' ')
end

=begin

Others' solutions:

# 羡慕，高手
def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end

def pig_it text
  text.split.map{|word| word =~ /\w/ ? "#{word[1..-1]}#{word[0]}ay" : word}.join(" ")
end

def pig_it text
  text.gsub(/(\w)(\w*)/){|w| $2 + $1 + 'ay' }
end

=end