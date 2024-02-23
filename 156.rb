=begin

Question: DotNotation Transformer

Description:
  Given a string dot notation, you should return a chained hash object, in the same order of this string:

Example:
  transforms("kata.dot.notation", "final value")

Produces:
  {kata: {dot: {notation: "final value"}}}

=end

# 没做出来，下为答案
def transform(notation, final_value)
  notation.split('.').reverse.inject(final_value){|hash, key| {key.to_sym => hash}}
end

=begin

Others' solutions:

def transform(notation, final_value)
  notation.split('.').reverse.inject(final_value) { |h, k| Hash[k.to_sym, h] }
end

=end