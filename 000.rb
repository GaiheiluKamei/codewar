=begin

Question: Are You Playing Banjo?

Description:
  Create a function which answers the question "Are you playing banjo?". If your name starts
  with the letter "R" or lower case "r", you are playing banjo!

  The function takes a name as its only argument, and returns one of the following strings:

    name + " plays banjo"
    name + " does not play banjo"

  Names given are always valid strings.

=end

def are_you_playing_banjo(name)
  name.start_with?(/R/i) ? name + " plays banjo" : name + " does not play banjo"
end

=begin

Others' solutions:

name[0].downcase == "r" ? "#{name} plays banjo" : "#{name} does not play banjo"

name.start_with?("r","R") ...

name.match(/^r/i) ...

name.chr.upcase.eql?('R')

"#{name} #{name =~ /^r/i ? 'plays' : 'does not play'} banjo"
=end