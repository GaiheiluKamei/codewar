=begin

Question: Bin to Decimal

Description:
  Complete the function which converts a binary number (given as a string) to a decimal number.

=end

def bin_to_dec(str)
  str.to_i(2)
end

=begin

Others' solutions:

# From the docs - "If arg is a String, when base is omitted or equals zero, radix
# indicators (0, 0b, and 0x) are honored." https://docs.ruby-lang.org/en/3.0/Kernel.html#method-i-Integer
def bin_to_dec(str)
  Integer("0b" + str)
end

=end