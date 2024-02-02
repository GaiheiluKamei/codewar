=begin

Question: Diamonds and Toads

Description:
  Base on the fairy tale [Diamonds and Toads](https://en.wikipedia.org/wiki/Diamonds_and_Toads) from Charles
  Perrault. In this kata you will have to complete a function that take 2 arguments:
    A string, that correspond to what the daugther says.
    A string, that tell you wich fairy the girl have met, this one can be good or evil.

  The function should return the following count as a hash:

    If the girl have met the good fairy:
      count 1 ruby everytime you see a r and 2 everytime you see a R
      count 1 crystal everytime you see a c and 2 everytime you see a C

    If the girl have met the evil fairy:
      count 1 python everytime you see a p and 2 everytime uou see a P
      count 1 squirrel everytime you see a s and 2 everytime you see a S

Note:
  For this kata I decided to remplace the normal Diamonds and Toads by some programming languages.
  And just discover that [Squirrel](https://en.wikipedia.org/wiki/Squirrel_(programming_language) is a
  programming language.

=end

def diamonds_and_toads(sentence, fairy)
  result = Hash.new(0)

  if fairy == :good
    sentence.each_char do |c|
      case c
      when 'r'
        result[:ruby] += 1
      when 'R'
        result[:ruby] += 2
      when 'c'
        result[:crystal] += 1
      when 'C'
        result[:crystal] += 2
      end
    end
  elsif fairy == :evil
    sentence.each_char do |c|
      case c
      when 'p'
        result[:python] += 1
      when 'P'
        result[:python] += 2
      when 's'
        result[:squirrel] += 1
      when 'S'
        result[:squirrel] += 2
      end
    end
  end

  result
end

=begin

Others' solutions:

def diamonds_and_toads(sentence, fairy)
  count_char = ->(c){sentence.count(c) + 2*sentence.count(c.upcase)}
  case fairy
  when :good then {ruby: count_char.('r'), crystal: count_char.('c')}
  when :evil then {python: count_char.('p'), squirrel: count_char.('s')}
  end.reject{|k,v| v.zero?}
end

=end