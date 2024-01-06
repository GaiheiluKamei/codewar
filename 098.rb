=begin

Question: Returning Strings

Description:
  Make a function that will return a greeting statement that uses an input;
  your program should return, "Hello, <name> how are you doing today?".

=end

def greet_98(name)
  "Hello, #{name} how are you doing today?"
end

=begin

Others' solutions:

def greet(name)
  "Hello, %s how are you doing today?" % name
end

def greet(name)
  "Hello, name how are you doing today?".sub('name', name)
end

=end