=begin

Question: Reverse or rotate?

Description:
  The input is a string str of digits. Cut the string into chunks (a chunk here is a substring
  of the initial string) of size sz (ignore the last chunk if its size is less than sz).

  If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2,
  reverse that chunk; otherwise rotate it to the left by one position. Put together these modified
  chunks and return the result as a string.

If:
  sz is <= 0 or if str is empty return ""
  sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".

Examples:
  revrot("123456987654", 6) --> "234561876549"
  revrot("123456987653", 6) --> "234561356789"
  revrot("66443875", 4) --> "44668753"
  revrot("66443875", 8) --> "64438756"
  revrot("664438769", 8) --> "67834466"
  revrot("123456779", 8) --> "23456771"
  revrot("", 8) --> ""
  revrot("123456779", 0) --> ""
  revrot("563000655734469485", 4) --> "0365065073456944"

  Example of a string rotated to the left by one position:
  s = "123456" gives "234561".

=end

def revrot(str, sz)
  return "" if sz <= 0 || str.empty? || sz > str.size
  str.split('').each_slice(sz).reject { |x| x.size != sz }.map { |e| e.map(&:to_i).sum % 2 == 0 ? e.reverse : e.rotate }.join
end

=begin

Others' solutions:

def revrot(str, sz)
  return '' if sz <= 0
  chunks = str.scan(/.{#{sz}}/)
  chunks.map do |chunk|
    digits = chunk.chars
    sum = digits.map {|x| x.to_i ** 3 }.inject(:+)
    sum.even? ? digits.reverse : digits.rotate
  end.join
end

def revrot(str, sz)
  return '' if str.empty? || sz <= 0 || sz > str.size
  str.chars.each_slice(sz).to_a.reject{ |p| p.empty? || p.size < sz }.map{ |p| p.map(&:to_i).reduce(:+).even? ? p.reverse : p.rotate }.join
end

=end