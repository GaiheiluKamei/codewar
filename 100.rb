=begin

Question: Fix string case

Description:
  In this Kata, you will be given a string that may have mixed uppercase and lowercase letters
  and your task is to convert that string to either lowercase only or uppercase only based on:

    1. make as few changes as possible.
    2. if the string contains equal number of uppercase and lowercase letters, convert the string
      to lowercase.

Example:
  solve("coDe") = "code". Lowercase characters > uppercase. Change only the "D" to lowercase.
  solve("CODe") = "CODE". Uppercase characters > lowercase. Change only the "e" to uppercase.
  solve("coDE") = "code". Upper == lowercase. Change all to lowercase.

=end

def solve s
  s.scan(/[A-Z]/).size - s.scan(/[a-z]/).size > 0 ? s.upcase : s.downcase
end

=begin

Others' solutions:

def solve(s)
  s.count('A-Z') > s.count('a-z') ? s.upcase : s.downcase
end

def solve(s)
  s.count('a-z') < s.size / 2 ? s.upcase : s.downcase
end

=end