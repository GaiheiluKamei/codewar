=begin

Question: Exclamation marks series #17: Put the exclamation marks and question marks on
  the balance - are they balanced?

Description:
  Each exclamation mark's weight is 2; each question mark's weight is 3. Putting two strings
  left and right on the balance - are they balanced?

  If the left side is more heavy, return "Left"; if the right side is more heavy, return "Right";
  if they are balanced, return "Balance".

Examples:
  "!!", "??"     -->  "Right"
  "!??", "?!!"   -->  "Left"
  "!?!!", "?!?"  -->  "Left"
  "!!???!????", "??!!?!!!!!!!"  -->  "Balance"

=end

def balance(left, right)
  left_hash = left.chars.reduce(Hash.new(0)) { |cal, e| cal[e] += 1; cal }
  right_hash = right.chars.reduce(Hash.new(0)) { |cal, e| cal[e] += 1; cal }
  left_sum = left_hash.fetch('!', 0) * 2 + left_hash.fetch('?', 0)*3
  right_sum = right_hash.fetch('!', 0) * 2 + right_hash.fetch('?', 0)*3

  left_sum > right_sum ? 'Left' : left_sum == right_sum ? 'Balance' : 'Right'
end

=begin

Others' solutions:

def balance(left, right)
  a = left.count('!') * 2 + left.count('?') * 3
  b = right.count('!') * 2 + right.count('?') * 3
  a == b ? "Balance" : a > b ? "Left" : "Right"
end

def balance(*args)
  left, right = args.map { |s| s.count("!") * 2 + s.count("?") * 3 }
  %w"Balance Left Right"[left <=> right]
end

=end