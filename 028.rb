=begin

Question: Consecutive strings

Description:
  You are given an array(list) strarr of strings and an integer k. Your task is to return
  the first longest string consisting of k consecutive strings taken in the array.

Examples:
  strarr = ["tree", "foling", "trashy", "blue", "abcdef", "uvwxyz"], k = 2

  Concatenate the consecutive strings of strarr by 2, we get:

  treefoling   (length 10)  concatenation of strarr[0] and strarr[1]
  folingtrashy ("      12)  concatenation of strarr[1] and strarr[2]
  trashyblue   ("      10)  concatenation of strarr[2] and strarr[3]
  blueabcdef   ("      10)  concatenation of strarr[3] and strarr[4]
  abcdefuvwxyz ("      12)  concatenation of strarr[4] and strarr[5]

  Two strings are the longest: "folingtrashy" and "abcdefuvwxyz".
  The first that came is "folingtrashy" so longest_consec(strarr, 2) should return "folingtrashy".

  In the same way:
  longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

  n being the length of the string array, if n = 0 or k > n or k <= 0 return "" (return Nothing in Elm, "nothing" in Erlang).

Note:
  consecutive strings : follow one after another without an interruption

=end

def longest_consec(strarr, k)
  n = strarr.size
  return '' if n == 0 || k > n || k <= 0

  result = {}
  (0..n-k).each do |i|
    tmp = ''
    x = 0
    while x < k do
      tmp += strarr[i+x]
      x += 1
    end

    result[tmp.size] = tmp if !result.key?(tmp.size)
  end

  result[result.keys.max]
end

=begin

Others' solutions:

def longest_consec(strarr, k)
  return "" unless k.between?(1, strarr.length)
  strarr.each_cons(k).map(&:join).max_by(&:length) || ""
end

def longest_consec(strarr, k)
  k > strarr.size || k <= 0 ? '' : strarr.each_cons(k).map(&:join).max_by(&:size)
end

def longest_consec(strarr, k)
  return "" if strarr.length == 0 || k > strarr.length || k <= 0

    longest_string = ""
    strarr.each_index do |i|
      str = strarr[i...i+k].join
      longest_string = str if str.length > longest_string.length
    end
    longest_string
end

=end