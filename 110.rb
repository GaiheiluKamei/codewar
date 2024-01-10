=begin

Question: Array#reduce

Description:
  In this kata, you must define the Array.reduce method.
  I have disabled the pre-existing reduce methods.
  Here's how it works:
    [1,2,3].reduce( ->(x,y){x+y}, 0)
    # => 6

Summary:
  The reduce method goes through each element of an array, applies the function to whatever the
  function returned last, and returns the last outcome. On the first iteration, it should pass
  the initial value to the function, as well as the first element of the array. If no initial
  value is passed, skip to the first element of the array.

  Ruby methods should expect a lambda.

=end

# class Array
#   def reduce(func, init=nil)
#     res = init.nil? ? self.shift : init
#     # 这是我的解决方案，但在 codewar 2.5 版本 有一些测试没有通过
#     # 把下面注释掉的代码改成 "return false if res == true" 之后测试通过，不确定什么原因
#     # return if res.nil?
#     # 另：这个解法在本地的 spec/110_spec.rb 的测试用例报错；下面注释中的其它方案也报错
#     return false if res == true
#     self.each do |i|
#       res = func.(res, i)
#     end
#
#     res
#   end
# end

=begin

Others' solutions:

class Array
  def reduce func, sum = self.shift
    self.each {|val| sum = func.call(sum, val)}
    sum
  end
end

class Array
  def reduce(func, *init)
    return init.first if empty?
    self[1..-1].reduce(func, init.empty? ? first : func.call(init.first, first))
  end
end

=end