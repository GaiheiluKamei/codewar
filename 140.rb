=begin

Question: Stop gninnipS My sdroW!

Description:
  Write a function that takes in a string of one or more words, and returns the same string, but with all
  words that have five or more letters reversed (Just like the name of this Kata). Strings passed in will
  consist of only letters and spaces. Spaces will be included only when more than one word is present.

Examples:
  "Hey fellow warriors"  --> "Hey wollef sroirraw"
  "This is a test"       --> "This is a test"
  "This is another test" --> "This is rehtona test"

=end

def spin_words(string)
  string.split.map { |i| i.size > 4 ? i.reverse : i }.join(' ')
end

=begin

Others' solutions:

# 第二个参数&:reverse是一个符号，它表示对匹配到的内容执行reverse方法，即将匹配到的单词进行反转
def spinWords(string)
  string.gsub(/\w{5,}/, &:reverse)
end

# 这个方法很优雅，但有性能问题：
# Just something that is important to have in mind regex in ruby aren't optimized so you can
# have problems using regex where you don't need it.
require 'benchmark'

def spian_regex(string)
  string.gsub(/\w{5,}/, &:reverse)
end

def spian_string(string)
  string.split(' ').map { |w| w.size > 4 ? w.reverse : w }.join
end

n = 5000000
Benchmark.bm do |x|
  x.report { n.times { spian_regex('Hey fellow warriors') } }
  x.report { n.times { spian_string('Hey fellow warriors') } }
end

__END__

user     system      total        real
  16.433565   0.091886  16.525451 ( 16.645529)
   5.327813   0.023683   5.351496 (  5.381821)

=end