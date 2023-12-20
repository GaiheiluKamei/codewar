=begin

Question: Grasshopper - Terminal game move function

Description:
  In this game, the hero moves from left to right. The player rolls the dice and moves the
  number of spaces indicated by the dice two times.

  Create a function for the terminal game that takes the current position of the hero and
  the roll (1-6) and return the new position.

Example:
  move(3, 6) should equal 15

=end

def move (position, roll)
  position + roll * 2
end

=begin

Others' solutions:

def move (position, roll)
  ( roll << 1 ) + position
end

=end