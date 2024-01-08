=begin

Question: Sum of Pairs

Description:
  Given a list of integers and a single sum value, return the first two values (parse
  from the left please) in order of appearance that add up to form the sum.

  If there are two or more pairs with the required sum, the pair whose second element
  has the smallest index is the solution.

Examples:
  sum_pairs([11, 3, 7, 5],         10)
  #              ^--^      3 + 7 = 10
  == [3, 7]

  sum_pairs([4, 3, 2, 3, 4],         6)
  #          ^-----^         4 + 2 = 6, indices: 0, 2 *
  #             ^-----^      3 + 3 = 6, indices: 1, 3
  #                ^-----^   2 + 4 = 6, indices: 2, 4
  #  * the correct answer is the pair whose second value has the smallest index
  == [4, 2]

  sum_pairs([0, 0, -2, 3], 2)
  #  there are no pairs of values that can be added to produce 2.
  == None/nil/undefined (Based on the language)

  sum_pairs([10, 5, 2, 3, 7, 5],         10)
  #              ^-----------^   5 + 5 = 10, indices: 1, 5
  #                    ^--^      3 + 7 = 10, indices: 3, 4 *
  #  * the correct answer is the pair whose second value has the smallest index
  == [3, 7]

  Negative numbers and duplicate numbers can and will appear.

NOTE:
  There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure your
  code doesn't time out.

=end

def sum_pairs(ints, s)
  tmp_result = []
  tmp_hash = {}

  # 第一次实现使用双重循环， O(N^2) 导致超时
  ints.each_with_index do |m, i|
    if !tmp_hash[m]
      tmp_hash[m] = [i]
      # 第三次这里没有加上对相同数字的限制，导致测试海量重复数字(如 1 出现 一百万次，会添加进此数组 一百万次) 引起内存不足
      # 改为重复数字只取前两个，由于取最小索引，所以也能满足 5+5 = 10 之类的需求
    elsif tmp_hash[m].size < 3
      tmp_hash[m] << i
    end
  end

  ints.each_with_index do |m, i|
    if idx = tmp_hash[s-m]
      # 第二次实现这里使用 idx.first != i，导致重复计算元素对
      # 即 [1, 4, 8, 7, 3, 15] 计算 [1, 7] 之后又重复计算 [7, 1]
      if idx.size == 1 && idx.first > i
        tmp_result << [m, [s-m, idx.first]]
      elsif idx.size > 1
        tmp_result << [m, [s-m, idx[1]]]
      end
    end
  end

  return nil if tmp_result.empty?
  return [tmp_result.first.first, tmp_result.first.last.first] if tmp_result.size == 1

  min = tmp_result.min_by { |e| e.last.last }
  [min.first, min.last.first]
end

=begin

Others' solutions:

# 这个解法太优秀
def sum_pairs(ints, s)
  seen = {}
  for i in ints do
    return [s-i, i] if seen[s-i]
    seen[i] = true
  end
  nil
end

# 2.
def sum_pairs(ints, s)
  # 可用 each_with_object(Set.new)
  passed = Set.new
  ints.each {|int| passed.include?(s - int) ? (return [s - int, int]) : passed.add(int) }
  nil
end

# 3.
def sum_pairs(ints, sum)
  checked_nums = []

  ints.each do |int|
    if checked_nums.include?(int) && int == (sum - int)
      return [int, int]
    elsif checked_nums.include?(int)
      next
    elsif checked_nums.include?(sum - int)
      return [(sum - int), int]
    else
      checked_nums << int
    end
  end

  nil
end

=end