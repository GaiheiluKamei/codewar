=begin

Question: Remove exclamation marks

Description:
  Write function RemoveExclamationMarks which removes all exclamation marks from a given string.

=end

def remove_exclamation_marks(s)
  s.gsub('!', '')
end

=begin

Others' solutions:

def remove_exclamation_marks(s)
  s.delete('!')
end

def remove_exclamation_marks(s)
   s.tr('!', '')
end

def remove_exclamation_marks(s)
  s.delete ?!
end

=end