=begin

Question: Get the mean of an array

Description:
  It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the
  students come to you and entreat you to calculate their average for them. Easy ! You just need to write a script.

  Return the average of the given array rounded down to its nearest integer.

  The array will never be empty.

=end

def get_average(marks)
  marks.sum / marks.size
end

=begin

Others' solutions:

class Array
  def mean
    reduce(:+) / size
  end
end

def get_average(marks)
  marks.mean
end

=end