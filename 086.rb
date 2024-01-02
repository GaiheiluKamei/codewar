=begin

Question: Drink about

Description:
  Kids drink toddy.
  Teens drink coke.
  Young adults drink beer.
  Adults drink whisky.
  Make a function that receive age, and return what they drink.

Rules:
  Children under 14 old.
  Teens under 18 old.
  Young under 21 old.
  Adults have 21 or more.

Examples:
  13 --> "drink toddy"
  17 --> "drink coke"
  18 --> "drink beer"
  20 --> "drink beer"
  30 --> "drink whisky"

=end

def people_with_age_drink(old)
  return 'drink toddy' if old < 14
  return 'drink coke' if old < 18
  return 'drink beer' if old < 21
  'drink whisky'
end

=begin

Others' solutions:

def people_with_age_drink(age)
  'drink ' + case age
    when 0..13 then 'toddy'
    when 14..17 then 'coke'
    when 18..20 then 'beer'
    else 'whisky'
  end
end

def people_with_age_drink(old)
 "drink " + (old < 14? "toddy": old < 18? "coke": old < 21? "beer": "whisky")
end

=end