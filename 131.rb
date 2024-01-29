=begin

Question: Sum of Digits / Digital Root

Description:
  Digital root is the recursive sum of all the digits in a number.

  https://en.wikipedia.org/wiki/Digital_root

  Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing
  in this way until a single-digit number is produced. The input will be a non-negative integer.

Examples:
      16  -->  1 + 6 = 7
     942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
  132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
  493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

=end

def digital_root(n)
  return n if n <= 9
  digital_root(n.digits.sum)
end

=begin

Others' solutions:

def digital_root(n)
  n < 10 ? n : digital_root(n.digits.sum)
end

def digital_root(n)
  n = n.to_s.chars.map(&:to_i).reduce(:+) while n.to_s.length > 1
  n
end

def digital_root(n)
  n = n.digits.sum until n.digits.length == 1
  n
end

=end