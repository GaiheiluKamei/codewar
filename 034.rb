=begin

Question: Third Angle of a Triangle

Description:
  You are given two interior angles (in degrees) of a triangle.
  Write a function to return the 3rd.

Note: only positive integers will be tested.
  https://en.wikipedia.org/wiki/Triangle

=end

def other_angle(a, b)
  180 - a - b
end

=begin

Others' solutions:

def other_angle(a, b)
    180 - (a + b)
end

=end