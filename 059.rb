=begin

Question: Exes and Ohs

Description:
  Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean
  and be case insensitive. The string can contain any char.

  Examples input/output:

  XO("ooxx") => true
  XO("xooxx") => false
  XO("ooxXm") => true
  XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
  XO("zzoo") => false

=end

def XO(str)
  str.count('oO') == str.count('xX')
end

=begin

Others' solutions:

def XO(str)
  str.scan(/o/i).count == str.scan(/x/i).count
end

=end