=begin

Question: Next bigger number with the same digits

Description:
  Create a function that takes a positive integer and returns the next bigger number that can be formed by
  rearranging its digits. For example:
    12 ==> 21
   513 ==> 531
  2017 ==> 2071

  If the digits can't be rearranged to form a bigger number, return -1 (or nil in Swift, None in Rust):
      9 ==> -1
    111 ==> -1
    531 ==> -1

=end

# 自己的解决方案：Timed OutPassed: 148 Failed: ?Exit Code: 1
# Testing for 12986620809020533050594925706143999970894309420
# Testing for 22234943750883075372914
# Testing for 478129198282413371994440 失败
# def next_bigger(n)
  # 1. The filter_map method cannot be used as it is only available starting from Ruby 2.7.

  # 2. This is my first solution, it caused Timeout Error
  #   possibles = n.digits.permutation.reject { |i| i.first.zero? }.map { |i| i.join.to_i  }.uniq.sort
  #   s = possibles.size
  #   n_index = possibles.index(n)
  #   s == 1 || n_index+1 == s ? -1 : possibles.at(n_index+1)

  # 3. Try again
  #   return -1 if n.digits.uniq.size == 1
  #   first_number = n.to_s[0]
  #   remind_number = n.to_s[1..-1]
  #   remind = n.digits - [first_number.to_i]
  #   res = remind.permutation.sort.map { |i| (first_number + i.join).to_i }
  #   res.last == n ? -1 : res.at(res.index(n)+1)
  # puts n
  # n_digits = n.digits.sort
  # return -1 if n_digits.reverse.join == n.to_s
  #
  # # for 11111122222233333444555666777888999
  # if n_digits.join == n.to_s
  #   last_numbers = n_digits.uniq.last(2)
  #   index_1 = n_digits.rindex(last_numbers.first)
  #   index_2 = n_digits.index(last_numbers.last)
  #   n_digits[index_1] = last_numbers.last
  #   n_digits[index_2] = last_numbers.first
  #   return n_digits.join.to_i
  # end
#
#   while true
#     n += 1
#     return n if n.digits.sort == n_digits
#   end
# rescue -1
# end


def next_bigger(n)
  # already the largest?
  return -1 if n.digits == n.digits.sort

  digits, n = n.digits.sort, n + 9

  # search for next number
  n += 9 until n.digits.sort == digits

  n
end

=begin

Others' solutions:

# 这个看起来和我的思路差不多
def next_bigger(integer)
  max_n = integer.to_s.chars.sort.reverse.join.to_i
  return -1 if integer == max_n
  current_number = integer
  loop do
    current_number += 1
    if current_number.digits.sort == integer.digits.sort
      return current_number
    end
  end
  current_number
end

=end