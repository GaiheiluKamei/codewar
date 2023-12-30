=begin

Question: Testing 1-2-3

Description:
  Your team is writing a fancy new text editor and you've been tasked with implementing the
  line numbering.

  Write a function which takes a list of strings and returns each line prepended by the correct number.

  The numbering starts at 1. The format is n: string. Notice the colon and space in between.

Examples: (Input --> Output)
  [] --> []
  ["a", "b", "c"] --> ["1: a", "2: b", "3: c"]

=end

def number lines
  lines.map.with_index(1) { |e, i| "#{i}: #{e}"}
end

=begin

Others' solutions:

def number lines
  lines.each_with_index.map{|s, i| "#{i+1}: #{s}"}
end

=end