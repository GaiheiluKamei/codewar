=begin

Question: Transportation on vacation

Description:
  After a hard quarter in the office you decide to get some rest on a vacation. So you will
  book a flight for you and your girlfriend and try to leave all the mess behind you.

  You will need a rental car in order for you to get around in your vacation. The manager of
  the car rental makes you some good offers.

  Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off
  your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total.

  Write a code that gives out the total amount for different days(d).

=end

def rental_car_cost(d)
  return 40*d - 50 if d >= 7
  return 40*d - 20 if d >= 3
  40*d
end

=begin

Others' solutions:

def rental_car_cost(days)
  discount = 0
  discount = 20 if days >= 3
  discount = 50 if days >= 7
  days * 40 - discount
end

def rental_car_cost(d)
  r=d*40
  d<3 ? r : (d<7 ? r-20 : r-50)
end

def rental_car_cost(d)
  d * 40 - (d >= 7 ? 50 : d >= 3 ? 20 : 0)
end

=end