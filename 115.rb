=begin

Question: Find within array

Description:
  We'll create a function that takes in two parameters:
    a sequence (length and types of items are irrelevant)
    a function (value, index) that will be called on members of the sequence and their index.
      The function will return either true or false.

  Your function will iterate through the members of the sequence in order until the provided
  function returns true; at which point your function will return that item's index.

  If the function given returns false for all members of the sequence, your function should return -1.

    true_if_even = lambda { |value, index| value.even? }
    find_in_array([1,3,5,6,7], true_if_even) # --> 3

=end

def find_in_array(array, iterator)
  array.each_with_index do |e, i|
    return i if iterator.(e, i)
  end

  -1
end

=begin

Others' solutions:

def find_in_array(a,i)
  a.find_index.with_index(&i) || -1
end

def find_in_array(array, iterator)
  (0...array.size).find { |i| iterator.(array[i], i) } || -1
end

=end