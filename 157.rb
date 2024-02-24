=begin

Question: CamelCase Method

Description:
  Write a method (or function, depending on the language) that converts a string to camelCase, that is, all words
  must have their first letter capitalized and spaces must be removed.

Example:
  "hello case" --> "HelloCase"
  "camel case word" --> "CamelCaseWord"

=end

class String
  def camelcase
    self.split.map(&:capitalize).join
  end
end

=begin

Others' solutions:

class String
  def camelcase
    gsub(/\w+/, &:capitalize).delete(' ')
  end
end

class String
  def camelcase
    split.map(&:capitalize) * ''
  end
end

=end