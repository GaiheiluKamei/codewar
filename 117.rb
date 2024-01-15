=begin

Question: Run-length encoding

Description:
  Run-length encoding (RLE) is a very simple form of data compression in which runs of data (that
  is, sequences in which the same data value occurs in many consecutive data elements) are stored
  as a single data value and count, rather than as the original run. Wikipedia
  https://en.wikipedia.org/w/index.php?title=Run-length_encoding

Task:
  Your task is to write such a run-length encoding. For a given string, return a list (or array) of
  pairs (or arrays) [ (i1, s1), (i2, s2), …, (in, sn) ], such that one can reconstruct the original
  string by replicating the character sx ix times and concatening all those strings. Your run-length
  encoding should be minimal, ie. for all i the values si and si+1 should differ.

Example:
  As the article states, RLE is a very simple form of data compression. It's only suitable for runs of
  data, as one can see in the following example:
    rle("hello world!")
    # => [[1,'h'], [1,'e'], [2,'l'], [1,'o'], [1,' '], [1,'w'], [1,'o'], [1,'r'], [1,'l'], [1,'d'], [1,'!']]

  It's very effective if the same data value occurs in many consecutive data elements:
    rle("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbb")
    # => [[34,'a'], [3,'b']]

=end

def rle(str)
  res = []
  tmp = 1

  str.chars.each_with_index do |e, i|
    break unless i+1

    if e == str[i+1]
      tmp += 1
    else
      res << [tmp, e]
      tmp = 1
    end
  end

  res
end

=begin

Others' solutions:

# 对 chunk 的应用：
# str = "aaaaabbaa"
# str.chars.chunk { |x| x }.to_a
#  => [["a", ["a", "a", "a", "a", "a"]], ["b", ["b", "b"]], ["a", ["a", "a"]]]
def rle(str)
  (str||'').chars.chunk { |x| x }.map { |letter, consecutive| [consecutive.size, letter] }
end

=end