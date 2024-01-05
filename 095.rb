=begin

Question: Sort Numbers

Description:
  Finish the solution so that it sorts the passed in array of numbers. If the function
  passes in an empty array or null/nil value then it should return an empty array.

Examples:
  solution([1, 2, 10, 50, 5]) # should return [1,2,5,10,50]
  solution(nil) # should return []

=end

def solution(nums)
  nums ? nums.sort : []
end

=begin

Others' solutions:

# 1. great explain: https://stackoverflow.com/questions/2039343/ruby-integer-array-et-al-what-are-they-where-do-they-come-from
def solution(nums)
  Array(nums).sort
end

# 2.
def solution(nums)
  nums.to_a.sort
end

# 3.
def solution(nums)
  (nums or []).sort
end

# 4.
def solution(nums)
 nums.sort rescue []
end

# 5. 在 Ruby 中，[*some_variable] 的语法会将变量 some_variable 转换为数组，如果 some_variable
# 本身就是一个数组，它会保持不变，如果是 nil，则会被转换为空数组
def solution(nums)
  [*nums].sort
end

=end