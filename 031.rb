=begin

Question: Grasshopper - Messi goals function

Description:
  Messi is a soccer player with goals in three leagues:
    1. LaLiga
    2. Copa del Rey
    3. Champions

  Complete the function to return his total number of goals in all three leagues.

Note: the input will always be valid.

Example:
  5, 10, 2  -->  17

=end

def goals (laLigaGoals, copaDelReyGoals, championsLeagueGoals)
  laLigaGoals+copaDelReyGoals+championsLeagueGoals
end

=begin

Others' solutions:

def goals(*goals)
  goals.sum
end

def goals (*g)
  g.reduce(:+)
end

=end