=begin

Question: Find The Parity Outlier

Description:
  You are given an array (which will have a length of at least 3, but could be very large) containing
  integers. The array is either entirely comprised of odd integers or entirely comprised of even
  integers except for a single integer N. Write a method that takes the array as an argument and
  returns this "outlier" N.

Examples:
  [2, 4, 0, 100, 4, 11, 2602, 36] -->  11 (the only odd number)
  [160, 3, 1719, 19, 11, 13, -21] --> 160 (the only even number)

=end

def find_outlier(integers)
  integers.take(3).count(&:even?) >= 2 ? integers.each { |e| return e if e % 2 == 1 } : integers.each { |e| return e if e % 2 == 0 }
end

=begin

Others' solutions:

def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end

def find_outlier(integers)
	outlier = integers.first(3).count(&:even?) < 2 ? :even? : :odd?
	integers.find(&outlier)
end

def find_outlier(integers)
  integers.count(&:even?) > 1 ? integers.find(&:odd?) : integers.find(&:even?)
end

=end