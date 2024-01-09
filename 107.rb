=begin

Question: Printer Errors

Description:
  In a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors
  which, for the sake of simplicity, are named with letters from a to m.

  The colors used by the printer are recorded in a control string. For example a "good" control string
  would be aaabbbbhaijjjm meaning that the printer used three times color a, four times color b, one
  time color h then one time color a...

  Sometimes there are problems: lack of colors, technical malfunction and a "bad" control string is
  produced e.g. aaaxbbbbyyhwawiwjjjwwm with letters not from a to m.

  You have to write a function printer_error which given a string will return the error rate of the
  printer as a string representing a rational whose numerator is the number of errors and the
  denominator the length of the control string. Don't reduce this fraction to a simpler expression.

  The string has a length greater or equal to one and contains only letters from a to z.

Examples:
  s="aaabbbbhaijjjm"
  printer_error(s) => "0/14"

  s="aaaxbbbbyyhwawiwjjjwwm"
  printer_error(s) => "8/22"

=end

def printer_error(s)
  "#{s.scan(/[n-z]/).count}/#{s.size}"
end

=begin

Others' solutions:

# Many years ago, a program called tr used 'a-d' as an abbreviation for 'abcd' for doing character replacements in a
# string, and a lot of other programs picked up this convention.
#
# When Ruby was implementing string methods it also has tr which uses the same syntax. Since the syntax was there it
# makes sense to use it for delete and count.
#
# It works because these methods take string arguments, and 'n-z' is the syntax these support. ('n'..'z') doesn't work
# because tr/delete/count don't accept ranges.
#
# Ranges in that case would be tricky to support since the thing inside a range does not HAVE to be a string.
#
# I guess if you had a range you could try a workaround like:
# ('n'..'z').to_s.sub('..','-')
# or
# ('n'..'z').minmax.join('-')
# Dive deeper: Search the Ruby C source for: tr_find and tr_trans
def printer_error(s)
	"#{s.count('n-z')}/#{s.length}"
end

def printer_error(s)
	err = s.chars.count { |ch| ch > "m" }
  len = s.length
  "#{err}/#{len}"
end

=end