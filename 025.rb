=begin

Question: Thinkful - Logic Drills: Traffic light

Description:
  You're writing code to control your town's traffic lights. You need a function to
  handle each change from green, to yellow, to red, and then to green again.

  Complete the function that takes a string as an argument representing the current state
  of the light and returns a string representing the state the light should change to.

  For example, when the input is green, output should be yellow.

=end

def update_light(current)
  arr = ['green', 'yellow', 'red']
  arr.index(current) < arr.size-1 ? arr.at(arr.index(current)+1) : arr.first
end

=begin

Others' solutions:

def update_light(current)
  {"green" => "yellow", "yellow" => "red", "red" => "green"}[current]
end

def update_light(current)
  lights = %w[red yellow green]
  lights[lights.find_index(current) - 1]
end

def update_light(current)
  %w[green yellow red].cycle.each_cons(2).find {|a,b| a == current }.last
end

def update_light(current)
  colours = %w(green yellow red green)
  colours[colours.index(current).next]
end

def update_light(current)
  case current.downcase
    when 'green' then 'yellow'
    when 'yellow' then 'red'
    when 'red' then 'green'
  end
end

=end