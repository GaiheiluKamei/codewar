=begin

Question: Arrays of cats and dogs

Description:
  Consider an array containing cats and dogs. Each dog can catch only one cat, but cannot catch a cat that
  is more than n elements away. Your task will be to return the maximum number of cats that can be caught.

For example:
  solve(['D','C','C','D','C'], 2) = 2, because the dog at index 0 (D0) catches C1 and D3 catches C4.
  solve(['C','C','D','D','C','D'], 2) = 3, because D2 catches C0, D3 catches C1 and D5 catches C4.
  solve(['C','C','D','D','C','D'], 1) = 2, because D2 catches C1, D3 catches C4. C0 cannot be caught because n == 1.
  solve(['D','C','D','D','C'], 1) = 2, too many dogs, so all cats get caught!

  Do not modify the input array.

  More examples in the test cases. Good luck!

=end

def solve_121(arr,n)
  max = 0
  already_catch = {}

  arr.each_with_index do |c, i|
    next if c != 'D' || already_catch.key?(i)

    (-n..n).each do |j|
      next if i+j < 0 || already_catch.key?(i+j)

      if arr[i+j] && arr[i+j] == 'C'
        max += 1
        already_catch[i] = true
        already_catch[i+j] = true
        break
      end
    end
  end

  max
end

=begin

Others' solutions:

def solve(arr,n)
  arr.each_with_index do |animal, i|
    if animal == 'D'
      left = i - n > 0 ? i - n : 0
      right = i + n < arr.size-1 ? i + n : arr.size - 1
      cought_cat = arr[left..right].index('C')
      arr[left + cought_cat] = 'RIP Cat' if cought_cat
    end
  end
  arr.count('RIP Cat')
end

=end