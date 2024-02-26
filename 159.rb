=begin

Question: RGB To Hex Conversion

Description:
  The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal
  representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range
  must be rounded to the closest valid value.

Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

Example:
  255, 255, 255 --> "FFFFFF"
  255, 255, 300 --> "FFFFFF"
  0, 0, 0       --> "000000"
  148, 0, 211   --> "9400D3"

=end

def rgb(r, g, b)
  [r, g, b].map do |n|
    n = 0 if n < 0
    n = 255 if n > 255

    n = n.to_s(16)
    n = '0' + n if n.size == 1
    n.upcase
  end.join
end

=begin

Others' solutions:

def rgb(r, g, b)
  "%.2X%.2X%.2X" % [r,g,b].map{|i| [[i,255].min,0].max}
end

# c.to_s(16).upcase.rjust(2, "0")

# https://ruby-doc.org/core-2.4.0/Comparable.html#method-i-clamp

def rgb(r, g, b)
  '%02X' * 3 % [r, g, b].map{ |x| x.clamp(0, 255) }
end

=end