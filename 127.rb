=begin

Question: Hello new meta-class!

Description:
  Part of meta-programming is creating classes dynamically.

  In this task you need to make module Foo, such that if you call any inner class of Foo that
  doesn't exist, Foo will create the inner class and return a friendly greeting to the new class.

Example:
  > Foo::Bar
  => "Hello, Bar!"

  > Foo::Lemon
  => "Hello, Lemon!"

Hint:
  Classes in ruby are actually just constants. Ruby already comes with methods to check if there
  is a missing constant, and how to create a new constant.

=end

# 此代码自己写的在 Codewar 测试通过，在本地测试不通过
# module Foo
#
#   def self.const_missing(arg)
#     Class.new do
#       def self.new
#         "Hello, #{arg}!"
#       end
#     end
#   end
#
# end

# ChatGPT 也不通过，大概测试用例有问题
module Foo
  def self.const_missing(name)
    klass = Class.new do
      define_singleton_method(:to_s) { "Hello, #{name}!" }
    end
    const_set(name, klass.to_s)
    klass  # 返回新创建的类
  end
end

=begin

Others' solutions:

# 别人的方案，本地测试也不通过
module Foo
  def self.const_missing(name)
    new_class = Class.new(Object) do
      def initialize(name)
        puts "Hello, #{name}"
      end
    end

    Object.const_set(name, new_class)
  end
end

# 这个同样
module Foo
  def self.const_missing(name)
    const_set name, "Hello, #{name}!"
  end
end

=end