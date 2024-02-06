=begin

Question: Arrays and Procs #1

Description:
  Functions like the one below can be invoked on values as shown:

    def func(a)
      a + a
    end

    func(1) #=> 2
    func(“str”) #=> “strstr”
    func(21) #=> 42

  Procs like the one below have a slightly different syntax. For more on that syntax, see the Ruby Proc docs.
  https://ruby-doc.org/core-2.3.0/Proc.html

    func = proc { | a | a + a }
    func.call(1) #=> 2

Task:
  Your job here is to implement a function (named array_procs) that will take an array, arr, and a
  variable number of procs, procs, and apply each proc, in order, to every single element in the array
  arr. Up to nine procs may be inputted. Your function should not modify the input array. Note that
  Proc#call is disabled, so neither of the following will work:

    x = proc { | i | i + 2 }
    x.(2)
    x.call(2)

  How the function will be called:
    array_procs(an_array, any_number_of_procs1, any_number_of_procs2,...)

Some examples:
  arr = [1, 2, 4, 6]
  proc1 = proc { | i | i * 2 }
  proc2 = proc { | i | i + 1 }
  array_procs(arr, proc1, proc2) #=>
    [(1 * 2) + 1, (2 * 2) + 1, (4 * 2) + 1, (6 * 2) + 1]
    [          3,           5,           9,          13]
  array_procs(arr, proc2, proc1) #=>
    [(1 + 1) * 2, (2 + 1) * 2, (4 + 1) * 2, (6 + 1) * 2]
    [          4,           6,          10,          14]
  array_procs(arr, proc2) #=>
    [(1 + 1), (2 + 1), (4 + 1), (6 + 1)]
    [      2,       3,       5,       7]
  array_procs(arr) #=>
    [1, 2, 4, 6] since there are no procs to apply on the elements

  Also, whenever one of the tests fails, the procs applied will be printed to the console. This is
  because it is difficult to print the source code for procs, and so the string values of the failed
  inputs would help.

  All input procs will take only one argument, but some procs may take an argument and not use it (for
  example, proc { | i | 0 + 2 + 22 } is valid, and should change every value in the array to 24).
  There will also be no need to ensure that the first argument is an array or that the rest of the
  arguments are proc functions. And again, Proc#call is disabled.

  If you see issues or have any suggestions/ideas at all, please don't hesitate to comment.
  Otherwise, please rank and mark as ready!

  When you're done here, try the next kata in the series:
    Arrays and Procs #2: https://www.codewars.com/kata/arrays-and-procs-number-2

  Also check out my other creations:
    Implement String#transpose: https://www.codewars.com/kata/implement-string-number-transpose

    Implement Array#transpose!: https://www.codewars.com/kata/implement-array-number-transpose

=end

def array_procs(arr, *procs)
  res = arr

  while p = procs.shift
    res = res.map { |x| p.yield(x) }
  end

  res
end

=begin

Others' solutions:

# 使用&proc的语法通常用于将proc对象转换为块，并将其传递给方法。
def array_procs(arr, *procs)
	procs.inject(arr){ |a, p| a.map(&p) }
end

def array_procs(arr, *procs)
  procs.each{|p| arr = arr.map(&p) }
  arr
end

=end