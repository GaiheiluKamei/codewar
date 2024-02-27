=begin

Question: Get Indices of Item Weights

Description:
  Given a package with a weight limit `limit` and an array `arr` of item weights, implement a method (ruby)/function (javascript)
  that finds two items whose sum of weights equals the weight limit `limit`. Your method/function should return a
  pair ex. `[i, j]` of the indices of the item weights. If such a pair doesn’t exist, return `nil/null`.

  Challenge Complete in under O(n^2) a.k.a. quadratic time complexity

  Constraints: Returned Array elements could not be the same index position so [1, 1] would not be acceptable...

  Return the first pair, a.k.a lexographically speaking, that sums up to the limit

  [input] array.integer arr 2 ≤ arr.length ≤ 100

  [input] integer limit

  [output] array.integer

=end

# 自己的解法：通过第一个测试，失败后两个测试
# #Remember try to avoid brute forcing it.
# #Make it linear or close to linear.
#
# def get_indices_of_item_weights(arr, limit)
#   arr = arr.sort
#   left = 0
#   middle = arr.size / 2
#
#   arr.size.times do
#
#     if (arr[left] + arr[middle] == limit)
#       left == middle ? (return nil) : (return [left, middle])
#     elsif (arr[left] + arr[middle] < limit)
#       if middle < (arr.size-1)
#         middle = (middle + arr.size) / 2
#       else
#         left = left + 1
#         middle = arr.size / 2
#       end
#     elsif (arr[left] + arr[middle] > limit)
#       if middle == left
#         return nil
#       else
#         middle = (middle+left) / 2
#       end
#     end
#   end
#
#   nil
# end

def get_indices_of_item_weights(arr, limit)
  arr.each_index.to_a.combination(2).detect { |a, b| arr[a] + arr[b] == limit }
end

=begin

Others' solutions:

def get_indices_of_item_weights(a,k)
  for i in 0..a.size-1 do
    for j in (i+1)..a.size-1 do
      if a[i]+a[j]==k then return [i,j] end
    end
  end
  nil
end

def get_indices_of_item_weights(arr, limit)
  pairs = []
  needs = {}
  arr.each_with_index do |i, index|
    pairs << [needs[i], index] if needs.key?(i)
    needs[limit - i] ||= index
  end
  pairs.sort.first
end

=end