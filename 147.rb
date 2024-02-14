=begin

Question: Palindromes Below

Description:
  The aim of this Kata is to modify the Fixnum ( JS: Number CS: extension for int) class to give it
  the palindrome_below ( JS: palindromeBelow CS: PalindromeBelow ) method. This method returns all
  numbers from and including 1 up to but not including itself that are palindromes for a given base.
  http://en.wikipedia.org/wiki/Radix

  For example in base 2 (binary)
    1 = "1"
    2 = "10"
    3 = "11"
    4 = "100"

  Therefore 1 and 3 are palindromes in base two and the method should return the following.
    5.palindrome_below(2)
    => [1, 3]

=end

class Integer
  def palindrome_below(n)
    (1..self).map { |x| x.to_s(n) }.select { |x| x.reverse == x }.map { |x| x.to_i(n) }
  end
end

=begin

Others' solutions:

class Fixnum
  def palindrome_below i
  	(1...self).select{|f| f.to_s(i) == f.to_s(i).reverse}
  end
end

=end