=begin

Question: Maximum subarray sum

Description:
  The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence
  in an array or list of integers:
    maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
    -- should be 6: [4, -1, 2, 1]

  Easy case is when the list is made up of only positive numbers and the maximum sum is the sum of
  the whole array. If the list is made up of only negative numbers, return 0 instead.

  Empty list is considered to have zero greatest sum. Note that the empty list or array is also a
  valid sublist/subarray.

=end

#**************  DID NOT SOLVE!, THIS IS OTHER'S ANSWER!
# 这段代码实现了 Kadane's 算法，它通过一次遍历数组就能够找到最大子数组和，时间复杂度为 O(n)，其中 n 是数组的长度。
# 算法的基本思想是维护两个变量：max_ending_here 和 max_so_far。max_ending_here 表示以当前元素为结尾的最大子数组和，
# 而 max_so_far 表示目前为止找到的最大子数组和。
# 在遍历数组的过程中，对于数组中的每个元素，我们计算以该元素为结尾的最大子数组和，并将其与 max_ending_here 和 max_so_far 进行比较，
# 更新这两个变量的值。这样，当遍历完成后，max_so_far 中存储的就是整个数组中的最大子数组和。
#
# Kadane's 算法的关键在于利用动态规划的思想，通过不断更新局部最优解来得到全局最优解。这种方法避免了使用暴力搜索的方式，大大提高了解决问题的效率。
#
# 以下是一些常见的实际应用情况：
# 股票交易：在股票交易中，可以使用 Kadane's 算法来确定最佳的买入和卖出时机，以获得最大的利润。
# 经济学：在经济学中，可以使用 Kadane's 算法来分析时间序列数据，以找到具有最大增长或最大减少的子序列。
# 数据流分析：在数据流分析中，Kadane's 算法可以用于处理连续的数据流，以找到具有最大和的子数组。
# 计算机视觉：在图像处理和计算机视觉中，Kadane's 算法可以用于查找图像中具有最大亮度或最大对比度的区域。
# 总的来说，Kadane's 算法适用于需要寻找具有最大总和的子数组的任何情况，无论是在金融领域、数据分析领域还是图像处理领域。
def max_sequence(arr)
  return 0 if arr.empty?

  max_ending_here = max_so_far = 0

  arr.each do |n|
    max_ending_here = [n, max_ending_here + n].max # 这一行代码计算了以当前元素 n 结尾的最大子数组和。
    max_so_far = [max_so_far, max_ending_here].max # 这一行代码更新了目前为止找到的最大子数组和。
  end

  max_so_far
end

=begin

Others' solutions:

def max_sequence(arr)
  return 0 if arr.empty?

  max_ending_here = max_so_far = 0

  arr.each do |n|
    max_ending_here = [n, max_ending_here + n].max
    max_so_far = [max_so_far, max_ending_here].max
  end

  max_so_far
end

# The map makes an array of the sums of every possible subarray.
# Flatten makes sure we have a list of sums rather than a list of arrays of sums.
# ***The push(0) makes sure that the maximum value will never be less than zero.
# And max takes the max.
def max_sequence(array)
  (1..array.size).map { |i| array.each_cons(i).map(&:sum) }.flatten.push(0).max
end

def max_sequence(arr)
  sum = 0
  max = 0
  for i in 0...arr.length
    sum += arr[i]

    if sum < 0
      sum = 0
    end

    if sum > max
      max = sum
    end
  end
  max
end

def max_sequence(arr)
  max = 0
  sum = 0
  arr.each do |val|
    sum += val
    sum = 0 if sum < 0

    max = sum if sum > max
  end

  return max
end

=end