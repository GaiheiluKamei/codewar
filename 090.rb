=begin

Question: Sum of angles

Description:
  Find the total sum of internal angles (in degrees) in an n-sided simple polygon.
  N will be greater than 2.

=end

def angle(n)
  180*(n-2)
end

=begin

Others' solutions:

def angle(n)
  return n * 180 - 360
end

=end