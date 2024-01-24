=begin

Question: Implement Hash#safe_dig

Description:
  Implement a safe version of Ruby's Hash#dig
  Given a hash and a list of n keys, return the value of the nth nested value.

  If there are more keys than there are nested levels of hashes, the method should return nil rather
  than raise an exception.

  All keys are assumed to be symbols in this kata.

=end

class Hash
  def safe_dig(*args)
    tmp = self
    args.each do |key|
      return nil if !tmp.is_a?(Hash) || !tmp[key]
      tmp = tmp[key]
    end
    tmp
  end
end

=begin

Others' solutions:

class Hash
  def safe_dig(*path)
    dig(*path) rescue nil
  end
end

class Hash
  def safe_dig(*keys)
    keys.reduce(self){|h, k| h[k]} rescue nil
  end
end

=end