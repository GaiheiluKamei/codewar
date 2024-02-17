=begin

Question: Mean Square Error

Description:
  Complete the function that:
    accepts two integer arrays of equal length
    compares the value each member in one array to the corresponding member in the other
    squares the absolute value difference between those two values
    and returns the average of those squared absolute value difference between each member pair.

Example:
  [1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
  [10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
  [-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

=end

def solution_150(arr1, arr2)
  arr1.zip(arr2).map { |x| ((x.first - x.last).abs) ** 2 }.sum.to_f / arr1.size
end

=begin

Others' solutions:

def solution (arr1, arr2)
  arr1.map.with_index { |n, i| (n - arr2[i]).abs ** 2 }.sum.fdiv(arr1.length)
end

def solution (arr1, arr2)
  arr1.zip(arr2).map{|a,b| (a-b)**2}.sum.fdiv(arr1.size)
end

=end