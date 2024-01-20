=begin

Question: Don't Drink the Water

Description:
  Given a two-dimensional array representation of a glass of mixed liquids, sort the array such that
  the liquids appear in the glass based on their density. (Lower density floats to the top) The width
  of the glass will not change from top to bottom.

  ======================
  |   Density Chart    |
  ======================
  | Honey   | H | 1.36 |
  | Water   | W | 1.00 |
  | Alcohol | A | 0.87 |
  | Oil     | O | 0.80 |
  ----------------------

  {                             {
    { 'H', 'H', 'W', 'O' },        { 'O','O','O','O' },
    { 'W', 'W', 'O', 'W' },  =>    { 'W','W','W','W' },
    { 'H', 'H', 'O', 'O' }         { 'H','H','H','H' }
  }                             }

  The glass representation may be larger or smaller. If a liquid doesn't fill a row, it floats to the
  top and to the left.

=end

def separate_liquids(glass)
  return [] if glass.empty?
  hash = { 'O' => 0, 'A' => 1, 'W' => 2, 'H' => 3 }
  glass.flatten.sort_by { |x| hash[x] }.each_slice(glass.first.size).to_a
end

=begin

Others' solutions:

def separate_liquids(glass)
  glass.empty? ? [] : [*glass.flatten.sort{|a,b|"OAWH".index(a)-"OAWH".index(b)}.each_slice(glass[0].size)]
end

=end