=begin

Question: Number , number ... wait LETTER !

Description:
  Your task is to write a function that receives as its single argument a string that contains
  numbers delimited by single spaces. Each number has a single alphabet letter somewhere within it.

    Example : "24z6 1x23 y369 89a 900b"

  As shown above, this alphabet letter can appear anywhere within the number. You have to extract
  the letters and sort the numbers according to their corresponding letters.

    Example : "24z6 1x23 y369 89a 900b" will become 89 900 123 369 246 (ordered according to the
              alphabet letter)

  Here comes the difficult part, now you have to do a series of computations on the numbers you have
  extracted.

    1. The sequence of computations are + - * /. Basic math rules do NOT apply, you have to do each
        computation in exactly this order.
    2. This has to work for any size of numbers sent in (after division, go back to addition, etc).
    3. In the case of duplicate alphabet letters, you have to arrange them according to the number that
        appeared first in the input string.
    4. Remember to also round the final answer to the nearest integer.

Examples :
  "24z6 1x23 y369 89a 900b" = 89 + 900 - 123 * 369 / 246 = 1299
  "24z6 1z23 y369 89z 900b" = 900 + 369 - 246 * 123 / 89 = 1414
  "10a 90x 14b 78u 45a 7b 34y" = 10 + 45 - 14 * 7 / 78 + 90 - 34 = 60

=end

def do_math(str)
  numbers = str.split.map { |e| [e.gsub(/\d+/, ''), e.gsub(/[a-zA-Z]/, '')]}.sort_by(&:first).map { |e| e.last.to_f }
  operations = %w[+ - * /].cycle(numbers.size/4+1).take(numbers.size-1)
  final_arr = numbers.zip(operations).flatten.compact
  until final_arr.size == 1
    final_arr.unshift(eval(final_arr.shift(3).join).to_s)
  end

  final_arr.first.to_f.round
end

=begin

Others' solutions:

def do_math(s)
  ops = ["+", "-", "*", "/"].cycle
  s.split(" ").sort_by { |word| word.scan(/[a-z]/) }.map { |word| word.delete("a-z").to_f }.reduce do |sum, num|
    sum = sum.send(ops.next.to_sym, num)
  end.round
end

def do_math(str)
  str.split
    .sort_by { |e| e[/[a-z]{1}/] }
    .map { |e| e.gsub(/[^0-9]/, '').to_f }
    .each.with_index.reduce { |(a, z), (b, i)| a.public_send(%i[ + - * / ][(i - 1) % 4], b) }
    .round
end

=end