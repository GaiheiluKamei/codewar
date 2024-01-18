=begin

Question: Find the integer Partition of k-Length With Maximum or Minimum Value For Its Product Value

Description:
  Given a certain integer n, n > 0 and a number of partitions, k, k > 0; we want to know the partition
  which has the maximum or minimum product of its terms.

  The function find_spec_partition() , will receive three arguments, n, k, and a command: 'max' or 'min'

  The function should output the partition that has maximum or minimum value product (it depends on the
  given command) as an array with its terms in decreasing order.

  Let's see some cases (Python and Ruby):
    find_spec_partition(10, 4, 'max') == [3, 3, 2, 2]
    find_spec_partition(10, 4, 'min') == [7, 1, 1, 1]

  and JavaScript:
    findSpecPartition(10, 4, 'max') == [3, 3, 2, 2]
    findSpecPartition(10, 4, 'min') == [7, 1, 1, 1]

  The partitions of 10 with 4 terms with their products are:
    (4, 3, 2, 1): 24
    (4, 2, 2, 2): 32
    (6, 2, 1, 1): 12
    (3, 3, 3, 1): 27
    (4, 4, 1, 1): 16
    (5, 2, 2, 1): 20
    (7, 1, 1, 1): 7   <------- min. product value
    (3, 3, 2, 2): 36  <------- max. product value
    (5, 3, 1, 1): 15

=end

# 最小乘积应该有尽可能多的 1
# 最大乘积应该尽可能取中间数
def find_spec_partition(n, k, com)
  return (Array.new(k-1, 1) << (n-k+1)).reverse if com == 'min'

  res = []
  i = k
  k.times do
    e = n / i
    res << e
    n -= e
    i -= 1
  end

  res.reverse
end

=begin

Others' solutions:

def find_spec_partition(n,k,c)
  (0...k).map{|i| c=='min' ? (i==0 ? n-k+1 : 1) : (n/k + (i<(n%k) ? 1 : 0))}
end

def find_spec_partition(n, k, com)
  if com == 'max'
    q, r = n.divmod(k)
    (0...k).map { |i| q + (i < r ? 1 : 0) }
  else
    [n - k + 1] + [1] * (k - 1)
  end
end

=end