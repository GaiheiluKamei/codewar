=begin

Question: Range Extraction

Description:
  A format for expressing an ordered list of integers is to use a comma separated list of either
    1. individual integers
    2. or a range of integers denoted by the starting integer separated from the end integer in the range
        by a dash, '-'. The range includes all integers in the interval including both endpoints. It is
        not considered a range unless it spans at least 3 numbers. For example "12,13,15-17"

  Complete the solution so that it takes a list of integers in increasing order and returns a correctly
  formatted string in the range format.

Example:
  solution([-10, -9, -8, -6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
  # returns "-10--8,-6,-3-1,3-5,7-11,14,15,17-20"

=end

# 第一次做 4kyu 级别的题，花了一个多小时才做出来
def solution(list)
  res = ''
  start = 0

  while start < list.size
    tmp_e = list[start]
    tmp = start

    while tmp_e.next == list[tmp+1]
      tmp_e = tmp_e.next
      tmp += 1
    end

    if tmp - start >= 2
      res << "#{list[start]}-#{tmp_e},"
      start = tmp+1
    else
      res << "#{list[start]},"
      start += 1
    end
  end

  res.chomp(',')
end

=begin

Others' solutions:

def solution(list)
  list.chunk_while { |n1, n2| n2 - n1 == 1 }
      .map { |set| set.size > 2 ? "#{set.first}-#{set.last}" : set }
      .join(',')
end

def solution list
  array = [[list.first]]
  list[1..-1].each { |x| array.last[-1] +  1 == x ? array.last << x : array << [x] }
  array.map{ |x| x.size > 2 ? "#{x[0]}-#{x[-1]}" : x.join(',') }.join(',')
end

def solution(list)
  prev = list.first
  list.slice_before do |e|
    prev, prev2 = e, prev
    prev2 + 1 != e
  end.map do |chunk|
    chunk.size <= 2 ? chunk.join(",") : "#{chunk.first}-#{chunk.last}"
  end.join(",")
end

def solution(list)
  list.slice_when{|i, j| j - i > 1}.map{|x|x.size < 3 ? x * ',' : ["%s-%s" % [x[0], x[-1]]]}*','
end

=end