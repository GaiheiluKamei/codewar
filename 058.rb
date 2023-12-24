=begin

Question: 5 without numbers !!

Description:
  Write a function that always returns 5

  Sounds easy right? Just bear in mind that you can't use any of the following characters: 0123456789*+-/

  Good luck :)

=end

def unusual_five
  'A'.ord.digits.first
end

=begin

Others' solutions:

def unusual_five()
  'five!'.length
end

def unusual_five
  '"'.ord ^ "'".ord
end


=end