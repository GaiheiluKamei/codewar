=begin

Question: String repeat

Description:
  Write a function that accepts an integer n and a string s as parameters, and
  returns a string of s repeated exactly n times.

Examples:
  6, "I"     -> "IIIIII"
  5, "Hello" -> "HelloHelloHelloHelloHello"

=end

def repeat_str (n, s)
  s*n
end
