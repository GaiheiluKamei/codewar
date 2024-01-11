=begin

Question: Minimum Reduction

Description:
  Given an array of integers, find the minimum number of elements to remove from the array so
  that the square root of the largest integer in the array is less or equal to the smallest
  number in the same array.

  x = smallest integer in the array

  y = largest integer in the array

  Find the minimum number of elements to remove so, √y ≤ x.

Example:
  A = {3, 6, 5, 9, 16}
  min=3 max=16
  √16 > 3
  remove 16, so largest element becomes 9.
  √9 ≤ 3
  so, minRemove(A) = 1
  since only 16 was removed.

Note:
  If all integers in the array are equal, then it wouldn't make any sense to reduce the array
  any further, so return 0.

  minRemove({2}) //=> 0
  minRemove({6,6,6,6}) //=> 0
  minRemove({6,6,6,2}) //=> 1

=end

# 没解决，下为答案
# 看了一下别人的答案，但还是没理清思路，不像表面那么简单
def min_remove arr
  m = (arr.max)**0.5
  min1 = arr.select{|i| i < m }.size
  num = 0
  while (1)
    num += arr.count arr.min
    arr.delete arr.min
    break if arr.min >= arr.max ** 0.5
    num += arr.count arr.max
    arr.delete arr.max
    break if arr.min >= arr.max ** 0.5
  end
  num
  [num,min1].min
end

=begin

Others' solutions:

def min_remove arr
  (1..arr.uniq.size).flat_map { |x| arr.uniq.combination(x).select { |c| c.min**2 >= c.max }.map { |c| (arr - c).size } }.min
end

# good
def min_remove arr
    n, a = arr.size,arr.dup
    res, j = n - 1, 0
    a.sort!
    for i in 0...n
      low = a[i]
      while j+1 < n and a[j+1]**0.5 <= low
        j+=1
        tmp = n - j + i - 1
        res = tmp if tmp < res
      end
    end
   res
end

def min_remove(arr)
  tmp = arr.sort
  tmpr = tmp.reverse
  tmp.uniq.combination(2).select { |a, b| a ** 2 >= b }.map { |a, b| tmp.index(a) + tmpr.index(b) }.min
end

def min_remove(xs)
  xs = xs.sort
  xs.reverse_each.map.with_index{ |x, nr|
    xs.bsearch_index{ |y| y * y >= x } + nr
  }.min
end

=end