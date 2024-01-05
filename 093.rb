=begin

Question: Calculating with Functions

Description:
  This time we want to write calculations using functions and get the results. Let's
  have a look at some examples:

  seven(times(five)) # must return 35
  four(plus(nine)) # must return 13
  eight(minus(three)) # must return 5
  six(divided_by(two)) # must return 3

Requirements:
  1. There must be a function for each number from 0 ("zero") to 9 ("nine")
  2. There must be a function for each of the following mathematical operations:
      plus, minus, times, divided_by
  3. Each calculation consist of exactly one operation and two numbers
  4. The most outer function represents the left operand, the most inner function
      represents the right operand
  5. Division should be integer division. For example, this should return 2, not 2.666666...:

  eight(divided_by(three))

=end

# codewar 这道题使用的 Ruby 版本 2.5，如果是 3.0 及以上版本可以使用新语法：
# def zero(value=nil) = value ? eval("0#{value}") : 0
def zero(value=nil)
  value ? eval("0#{value}") : 0
end

def one(value=nil)
  value ? eval("1#{value}") : 1
end

def two(value=nil)
  value ? eval("2#{value}") : 2
end

def three(value=nil)
  value ? eval("3#{value}") : 3
end

def four(value=nil)
  value ? eval("4#{value}") : 4
end

def five(value=nil)
  value ? eval("5#{value}") : 5
end

def six(value=nil)
  value ? eval("6#{value}") : 6
end

def seven(value=nil)
  value ? eval("7#{value}") : 7
end

def eight(value=nil)
  value ? eval("8#{value}") : 8
end

def nine(value=nil)
  value ? eval("9#{value}") : 9
end

def plus(value)
  "+#{value}"
end

def minus(value)
  "-#{value}"
end

def times(value)
  "*#{value}"
end

def divided_by(value)
  "/#{value}"
end

=begin

Others' solutions:

# 1.
%w(zero one two three four five six seven eight nine).each_with_index do |name, index|
  define_method(name) do |proc = nil|
    proc.nil? ? index : proc.call(index)
  end
end

def times(right)
  Proc.new {|left| left * right }
end
def plus(right)
  Proc.new {|left| left + right }
end
def minus(right)
  Proc.new {|left| left - right }
end
def divided_by(right)
  Proc.new {|left| left.to_f / right }
end

# 2. define_method 的 块参数是其定义的方法所接受的参数
# method 方法：https://ruby-doc.org/3.2.2/Object.html#method-i-method
%w[zero one two three four five six seven eight nine].each_with_index do |name, n|
  define_method(name) do |a = n|
     a == n ? a : n.to_f.method(a[0]).call(a[1])
  end
end

actions = [:+, :-, :*, :/]
%w[plus minus times divided_by].each_with_index do |name, i|
  define_method(name) do |n|
    [actions[i], n]
  end
end

# 3.
@numbers = { zero: "0.0", one: "1.0", two: "2.0", three: "3.0", four: "4.0",
             five: "5.0", six: "6.0", seven: "7.0", eight: "8.0", nine: "9.0" }
@operations = { plus: "+", minus: "-", times: "*", divided_by: "/"}

def method_missing(name, *args)
  @numbers.member?(name) ?
      instance_eval(@numbers[name] + args[0].to_s) :
      @operations[name] + args[0].to_s
end

# 4.
{
  :zero  => 0,
  :one   => 1,
  :two   => 2,
  :three => 3,
  :four  => 4,
  :five  => 5,
  :six   => 6,
  :seven => 7,
  :eight => 8,
  :nine  => 9
}.each do |meth, val|
  define_method("#{meth}") { |op = nil| op.nil? ? val : val.send(*op) }
end

{
  plus:       :+,
  minus:      :-,
  times:      :*,
  divided_by: :fdiv
}.each{ |meth, op| define_method(meth) {|other|  [op, other] } }

=end