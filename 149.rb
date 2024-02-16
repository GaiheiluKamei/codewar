=begin

Question: Football Fever!

Description:
  Whenever college football teams are mentioned on TV and in print, the top team names are always preceded
  by their rank. For instance, if Nebraska is #15 and Purdue is unranked, they will be mentioned like so:
    "Purdue vs #15 Nebraska"

  Create a class that accepts a list of ranked teams at initialization, and implements a `rankify` method
  that accepts a sentence, and adds rankings. Unranked teams should remain unmodified.

Example:
  football = Football.new(['Alabama', 'Nebraska', 'Oklahoma'])
  football.rankify("Nebraska vs Alabama tonight at 7!")
  #=> "#2 Nebraska vs #1 Alabama tonight at 7!"

  Be careful not to confuse ranked teams with similar names, like "Texas" and "Texas Tech"!

=end

class Football
  def initialize(teams)
    @teams = teams
    @teams_hash = teams.each_with_object({}).with_index { |(i, obj), j| obj[i] = j+1 }
  end

  def rankify(sentence)
    regex = Regexp.new(@teams_hash.keys.sort_by(&:size).reverse.map { |x| "(#{x})" }.join('|'))
    sentence.gsub(regex) { |m| "##{@teams_hash[m]} #{m}" }
  end
end

=begin

Others' solutions:

class Football
  def initialize(teams)
    @teams = teams
  end

  def rankify(string)
    @teams.each_with_index do |club,index|
      string.sub!(club, "##{index+1} #{club}")
    end
    string
  end
  # your solution here
end

=end