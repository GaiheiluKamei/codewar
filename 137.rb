=begin

Question: Count IP Addresses

Description:
  Implement a function that receives two IPv4 addresses, and returns the number of addresses
  between them (including the first one, excluding the last one).

  All inputs will be valid IPv4 addresses in the form of strings. The last address will always
  be greater than the first one.

Example:
  * With input "10.0.0.0", "10.0.0.50"  => return   50
  * With input "10.0.0.0", "10.0.1.0"   => return  256
  * With input "20.0.0.10", "20.0.1.0"  => return  246

=end

def ipsBetween(start, ending)
  start_arr = start.split('.').map(&:to_i)
  ending_arr = ending.split('.').map(&:to_i)
  ending_arr.map
            .with_index { |e, i| e - start_arr[i] }
            .each_with_index
            # 注意这里的 (e, i) 参数要加 括号，传递过来的是数组
            .reduce(0) { |acc, (e, i)| acc + e * (2**8) ** (4-1-i) }
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