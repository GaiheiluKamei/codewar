=begin

Question: Reverse linked list

Description:
  Let's say we have a singly linked list.
  Empty list is represented by null or equivalent (nil in Ruby).
  Non-empty list is represented by 2-element array [value, tail].

  So for example list with values 1, 2, 3 would be represented as [1, [2, [3, null]]].

  Your job is to develop function reverseList which returns elements of given list in reverse
  order without modification of the original list.

  P.S. Make sure your solution works on huge lists.

=end

# 自己没解答出来，此为答案
def reverseList(list)
  list.flatten[0..-2].reduce(nil){|s,v| [v,s] } if list
end

=begin

Others' solutions:

def reverseList(list)
  list.flatten[0..-2].reduce(nil){|s,v| [v,s] } if list
end

def reverseList(ls, n = nil)
  n, ls = [ls.first, n], ls[1] until ls.nil?
  n
end

=end