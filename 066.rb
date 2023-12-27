=begin

Question: Mumbling

Description:
  This time no story, no theory. The examples below show you how to write function accum:

Examples:
  accum("abcd") -> "A-Bb-Ccc-Dddd"
  accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
  accum("cwAt") -> "C-Ww-Aaa-Tttt"

  The parameter of accum is a string which includes only letters from a..z and A..Z.

=end

def accum(s)
  s.chars.map.with_index { |e, i| (e*(i+1)).capitalize }.join('-')
end

=begin

Others' solutions:

def accum(s)
  s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
end

def accum(s)
	s.downcase.chars.map.with_index(1){|e,i| (e*i).capitalize }.join('-')
end

=end