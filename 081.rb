=begin

Question: Maximum Length Difference

Description:
  You are given two arrays a1 and a2 of strings. Each string is composed with letters from
  a to z. Let x be any string in the first array and y be any string in the second array.

  Find max(abs(length(x) − length(y)))

  If a1 and/or a2 are empty return -1 in each language except in Haskell (F#) where you
  will return Nothing (None).

Examples:
  a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
  a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
  mxdiflg(a1, a2) --> 13

Bash note:
  input : 2 strings with substrings separated by ,
  output: number as a string

=end

def mxdiflg(a1, a2)
  return -1 if a1.empty? || a2.empty?

  [(a1.min_by(&:size).size - a2.max_by(&:size).size).abs, (a1.max_by(&:size).size - a2.min_by(&:size).size).abs].max
end

=begin

Others' solutions:

# 注意 product 方法是一个 n^2 操作，低效
def mxdiflg(a1, a2)
	# your code
  if a1.empty? || a2.empty?
    return -1
  end
  a1.product(a2).map {|x,y| (x.length - y.length).abs}.max
end

def mxdiflg(a1, a2)
	return -1 if a1.empty? || a2.empty?
	min1, max1 = a1.map(&:size).minmax
  min2, max2 = a2.map(&:size).minmax
  [max1 - min2, max2 - min1].max
end

def mxdiflg(a1, a2)
  a1 = a1.map(&:size)
  a2 = a2.map(&:size)

  [a1.max - a2.min, a1.min - a2.max].map(&:abs).max rescue -1
end

=end