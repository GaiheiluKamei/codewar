=begin

Question: So Many Permutations!

Description:
  In this kata, your task is to create all permutations of a non-empty input string and remove duplicates, if present.
  Create as many "shufflings" as you can!

Examples:
  With input 'a':
  Your function should return: ['a']

  With input 'ab':
  Your function should return ['ab', 'ba']

  With input 'abc':
  Your function should return ['abc','acb','bac','bca','cab','cba']

  With input 'aabb':
  Your function should return ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']

=end

# 没做出来，仿佛在哪见过这个题 4kyu；下面是自己的错误解法
# def permutations(string)
#   res = []
#   s = string.size
#
#   (0...s).each do |i|
#     tmp = string.dup
#
#     a = tmp[i]
#     tmp[i] = ''
#
#     (0...s).each do |j|
#       res << (j == s ? (tmp + a) : (tmp[0...j] + a + tmp[j..-1]))
#     end
#   end
#
#   res.uniq.sort
# end
#

def permutations(string)
  string.chars.permutation.map(&:join).uniq
end

=begin

Others' solutions:

def permutations(string)
  arr = string.split('')

  perm_helper(arr)
end

def perm_helper(arr)
  return arr if arr.length <= 1

  arr.each_with_index.map do |element, index|
    befores = before(arr, index)
    afters = after(arr, index)
    combined = befores + afters
    permuted = perm_helper(combined)

    permuted.each_with_index.map do |x, y|
      ([element] + [x]).join
    end
  end.flatten.uniq
end

def after(arr, index)
  return [] if (index + 1 == arr.length)
  arr.slice(index + 1, arr.length - 1)
end

def before(arr, index)
  return [] if (index == 0)
  arr.slice(0, index)
end

=end