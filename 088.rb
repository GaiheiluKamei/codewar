=begin

Question: Tortoise racing

Description:
  Two tortoises named A and B must run a race. A starts with an average speed of 720 feet per hour.
  Young B knows she runs faster than A, and furthermore has not finished her cabbage.

  When she starts, at last, she can see that A has a 70 feet lead but B's speed is 850 feet per hour.
  How long will it take B to catch A?

  More generally: given two speeds v1 (A's speed, integer > 0) and v2 (B's speed, integer > 0) and a
  lead g (integer > 0) how long will it take B to catch A?

  The result will be an array [hour, min, sec] which is the time needed in hours, minutes and seconds
  (round down to the nearest second) or a string in some languages.

  If v1 >= v2 then return nil, nothing, null, None or {-1, -1, -1} for C++, C, Go, Nim, Pascal, COBOL,
  Erlang, [-1, -1, -1] for Perl,[] for Kotlin or "-1 -1 -1" for others.

Examples:
  race(720, 850, 70) => [0, 32, 18] or "0 32 18"
  race(80, 91, 37)   => [3, 21, 49] or "3 21 49"

Note:
  See other examples in "Your test cases".
  In Fortran - as in any other language - the returned string is not permitted to contain any redundant
  trailing whitespace: you can use dynamically allocated character strings.

Hints for people who don't know how to convert to hours, minutes, seconds:
  Tortoises don't care about fractions of seconds
  Think of calculation by hand using only integers (in your code use or simulate integer division)
  or Google: "convert decimal time to hours minutes seconds"

=end

# 脑子乱了，没做出来，此为答案
# 评论：This causes an error if v1 == v2
def race(v1, v2, lead)
  return nil if v1 > v2
  time_in_seconds = (lead.fdiv(v2-v1)*3600).to_i
  hour = time_in_seconds / 3600
  min = (time_in_seconds / 60) % 60
  sec = time_in_seconds % 60
  [hour, min, sec]
end

=begin

Others' solutions:

# 这个更好
def race(v1, v2, g)
    return nil if v1 >= v2

    vd = v2 - v1
    d = (g / vd.to_f) * 3600
    t = Time.at(d).utc

    [t.hour, t.min, t.sec]
end

=end