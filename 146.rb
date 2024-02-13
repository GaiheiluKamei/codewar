=begin

Question: Roman Numerals Decoder

Description:
  Create a function that takes a Roman numeral as its argument and returns its value as a numeric
  decimal integer. You don't need to validate the form of the Roman numeral.

  Modern Roman numerals are written by expressing each decimal digit of the number to be encoded
  separately, starting with the leftmost digit and skipping any 0s. So 1990 is rendered "MCMXC" (1000 = M,
  900 = CM, 90 = XC) and 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII). The Roman numeral for 1666,
  "MDCLXVI", uses each letter in descending order.

  Modern Roman numerals: https://en.wikipedia.org/wiki/Roman_numerals#Standard_form

Example:
  "MM"      -> 2000
  "MDCLXVI" -> 1666
  "M"       -> 1000
  "CD"      ->  400
  "XC"      ->   90
  "XL"      ->   40
  "I"       ->    1

Help:
  Symbol    Value
  I          1
  V          5
  X          10
  L          50
  C          100
  D          500
  M          1,000

  Courtesy of rosettacode.org

=end

def solution_146(roman)
  hash = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }

  sum = 0
  roman.each_char.with_index do |c, i|
    unless hash[roman[i+1]]
      sum += hash[roman[c]]
    else
      if hash[roman[i+1]] > hash[c]
        sum += -hash[c]
      else
        sum += hash[c]
      end
    end
  end

  sum

end

=begin

Others' solutions:

ROMAN = {
  'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100,
  'XC' => 90, 'L' => 50, 'XL' => 40, 'X' => 10,
  'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1
}

def solution(roman)
  re = Regexp.new(ROMAN.keys.join('|'))
  roman.scan(re).inject(0) do |number, key|
    number + ROMAN[key]
  end
end

# 有些说这个方法不对
def solution(roman)
  vals = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  roman.chars.map{|c| vals[c]}.reduce{|a, b| a < b ? b - a : a + b}
end

def solution(r)
  map = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  r = r.chars.map {|c| map[c]}.chunk_while {|i,j| i<j}.to_a
  r.sum {|a,b| b ? b - a : a}
end

=end