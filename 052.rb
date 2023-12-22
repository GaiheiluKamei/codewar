=begin

Question: Sum of odd numbers

Description:
  Given the triangle of consecutive odd numbers:

             1
          3     5
       7     9    11
   13    15    17    19
21    23    25    27    29
...

  Calculate the sum of the numbers in the nth row of this triangle (starting at index 1)
  e.g.: (Input --> Output)

  1 -->  1
  2 --> 3 + 5 = 8

=end

# 等差数列：第 n 项 an = a1 + (n-1)*d
# 求和公式：S = n*(a1+an)/2
def row_sum_odd_numbers(n)
  first = n*(n-1)+1
  last = first + (n-1)*2
  n*(first + last) / 2
end

=begin

Others' solutions:

def row_sum_odd_numbers(n)
  n**3
end

def row_sum_odd_numbers(n)
 	start = n * n - n + 1
  finish = start + 2 * n
  (start...finish).step(2).reduce(:+)
end

def row_sum_odd_numbers(n)
  (1+(n-1)*n).step(by: 2).take(n).sum
end

=end