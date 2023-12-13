=begin

Question: Removing Elements

Description:
  Take an array and remove every second element from the array. Always keep the
  first element and start removing with the next element.

Examples:
  ["Keep", "Remove", "Keep", "Remove", "Keep", ...] --> ["Keep", "Keep", "Keep", ...]

  None of the arrays will be empty, so you don't have to worry about that!

=end

def remove_every_other(arr)
  (1..(arr.size/2)).each { arr.delete_at(_1) }
  arr
end

=begin

Others' solutions:

def remove_every_other(arr)
  arr.select.with_index { |_,idx| idx.even? }
end

def remove_every_other(arr)
  arr.each_slice(2).map(&:first)
end

def remove_every_other(arr)
  arr.delete_if.with_index {|x, i| i&1==1 }
end

=end