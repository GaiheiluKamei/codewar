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

# 学习了，没用过这个库
require 'ipaddr'
def ipsBetween(start, ending)
  IPAddr.new(ending).to_i - IPAddr.new(start).to_i
end

def ipsBetween(start, ending)
  ip_to_int = lambda { |x| x.split('.').reduce(0) { |a, e| a*256+e.to_i } }
  ip_to_int.(ending) - ip_to_int.(start)
end

def ipsBetween(start, ending)
  s = start.split(".").map{|n| n.to_i}
  e = ending.split(".").map{|n| n.to_i}

  (e[3] - s[3]) + (e[2] - s[2])*256 + (e[1] - s[1])*256*256 + (e[0] - s[0])*256*256*256
end

def ipsBetween(start, ending)
  c = ->(i){i.split(".").map(&:to_i).pack("CCCC").unpack("N").first}
  c[ending] - c[start]
end

=end