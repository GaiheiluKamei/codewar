=begin

Question: Simple Encryption #1 - Alternating Split

Description:
  Implement a pseudo-encryption algorithm which given a string S and an integer N concatenates
  all the odd-indexed characters of S with all the even-indexed characters of S, this process
  should be repeated N times.

Examples:
  encrypt("012345", 1)  =>  "135024"
  encrypt("012345", 2)  =>  "135024"  ->  "304152"
  encrypt("012345", 3)  =>  "135024"  ->  "304152"  ->  "012345"

  encrypt("01234", 1)  =>  "13024"
  encrypt("01234", 2)  =>  "13024"  ->  "32104"
  encrypt("01234", 3)  =>  "13024"  ->  "32104"  ->  "20314"

  Together with the encryption function, you should also implement a decryption function which
  reverses the process.

  If the string S is an empty value or the integer N is not positive, return the first argument
  without changes.

=end

def encrypt(text, n)
  n.times do
    s = ''
    (1..text.size-1).step(2).each { |i| s += text[i] }
    (0..text.size-1).step(2).each { |i| s += text[i] }
    text = s
  end

  text
end

def decrypt(encrypted_text, n)
  n.times do
    s = ' ' * encrypted_text.size
    left_encrypted = encrypted_text[0..encrypted_text.size/2-1].chars
    right_encrypted = encrypted_text[encrypted_text.size/2..encrypted_text.size-1].chars
    (1..encrypted_text.size-1).step(2).each { |i| s[i] = left_encrypted.shift }
    (0..encrypted_text.size-1).step(2).each { |i| s[i] = right_encrypted.shift }
    encrypted_text = s
  end

  encrypted_text
end

=begin

Others' solutions:

# 1.
def encrypt(text, n)
  return text if n <= 0
  encrypt(text.scan(/(.)(.)?/).transpose.reverse.join, n-1)
end

def decrypt(text, n)
  return text if n <= 0
  c, s = text.chars, text.size/2
  decrypt(c.drop(s).zip(c.take s).join, n-1)
end

# 2.
def encrypt(text, n)

    return text if n <= 0
    arr1 = text.chars.select.with_index{|_,idx| idx.odd?}
    arr2 = text.chars.select.with_index{|_,idx| idx.even?}
    encrypt( (arr1 + arr2).join , n-1)
end

def decrypt(encrypted_text, n)
    return encrypted_text if n <= 0

    midpoint = encrypted_text.length/2
    arr1 = encrypted_text[0...midpoint].chars
    arr2 = encrypted_text[midpoint ..-1].chars
    decrypt( arr2.zip(arr1).join , n-1)
end

# 3.
def encrypt s, n
    n.times{s = s.chars.partition.with_index{|c, i| i.odd?}.join if s}
    s
end

def decrypt s, n
    n.times{s = s.chars[s.size/2..-1].zip(s.chars[0...s.size/2]).map(&:join).join if s}
    s
end

=end