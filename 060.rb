=begin

Question: String incrementer

Description:
  Your job is to write a function which increments a string, to create a new string.
    1. If the string already ends with a number, the number should be incremented by 1.
    2. If the string does not end with a number. the number 1 should be appended to the new string.

Examples:
  foo -> foo1
  foobar23 -> foobar24
  foo0042 -> foo0043
  foo9 -> foo10
  foo099 -> foo100

Attention: If the number has leading zeros the amount of digits should be considered.

=end

def increment_string(input)
  (x = input[/\d+$/]) ? "#{input.split(x).first}#{x.next}" : "#{input}1"
end

=begin

Others' solutions:

def increment_string(input)
  input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
end

def increment_string(input)
  input[/\d\z/] ? input.sub(/(\d+)\z/) { $1.next } : input + '1'
end

=end