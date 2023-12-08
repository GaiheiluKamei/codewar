=begin

Question: Volume of a Cuboid

Description:
  Bob needs a fast way to calculate the volume of a cuboid with three values: the length,
  width and height of the cuboid. Write a function to help Bob with this calculation.

=end

def get_volume_of_cuboid(length, width, height)
  length * width * height
end

=begin

Others' solutions:

def get_volume_of_cuboid(*dimensions)
  dimensions.inject(:*)
end

=end