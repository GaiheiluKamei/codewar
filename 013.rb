=begin

Question: Quarter of the year

Description:
  Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as
  an integer number.

  For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the
  second quarter; and month 11 (November), is part of the fourth quarter.

Constraint:
  1 <= month <= 12

=end

def quarter_of(month)
  quarters = { "1" => [1,2,3], "2" => [4,5,6], "3" => [7,8,9], "4" => [10,11,12] }
  quarters.each do |k, v|
    return k.to_i if v.include?(month)
  end
end

=begin

Others' solutions:

def quarter_of(month)
   (month/3.0).ceil
end

def quarter_of(month)
  case month
    when (1..3)
      return 1
    when (4..6)
      return 2
    when (7..9)
     return 3
    when (10..12)
      return 4
    else
      "Invalid month selected"
   end
end

def quarter_of(month)
  (month + 2) / 3
end

def quarter_of(month)
  " 111222333444"[month].to_i
end

def quarter_of(month)
   [0,1,1,1,2,2,2,3,3,3,4,4,4][month]
end

=end