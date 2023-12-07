=begin

Question: Sum without highest and lowest number

Description:

  Sum all the numbers of a given array ( cq. list ), except the highest and the
  lowest element ( by value, not by index! ).

  The highest or lowest element respectively is a single element at each edge, even
  if there are more than one with the same value.

  Mind the input validation.

Example:

  { 6, 2, 1, 8, 10 } => 16
  { 1, 1, 11, 2, 3 } => 6

Input validation:

  If an empty value ( null, None, Nothing etc. ) is given instead of an array, or
  the given array is an empty list or a list with only 1 element, return 0.

=end

def sum_array(arr)
  return 0 if arr.nil? || arr.size <= 2

  arr.reduce(&:+) - arr.min - arr.max
end

=begin

Others' solutions:

def sum_array(arr)
  arr.nil? || arr.empty? ? 0 : arr.sort[1..-2].reduce(0, :+)
end

def sum_array(arr)
   arr&.any? ? arr.sort[1..-2].sum : 0
end

def sum_array a
    a.sort[1..-2].sum rescue 0
end

=end