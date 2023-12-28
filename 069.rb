=begin

Question: Product of consecutive Fib numbers

Description:
  The Fibonacci numbers are the numbers in the following integer sequence (Fn):
    0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, ...

  such as
    F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.

  Given a number, say prod (for product), we search two Fibonacci numbers F(n) and F(n+1) verifying
    F(n) * F(n+1) = prod.

  Your function productFib takes an integer (prod) and returns an array:
    [F(n), F(n+1), true] or {F(n), F(n+1), 1} or (F(n), F(n+1), True)
  depending on the language if F(n) * F(n+1) = prod.

  If you don't find two consecutive F(n) verifying F(n) * F(n+1) = prod you will return
    [F(n), F(n+1), false] or {F(n), F(n+1), 0} or (F(n), F(n+1), False)

  F(n) being the smallest one such as F(n) * F(n+1) > prod.

Some Examples of Return:
(depend on the language)
  productFib(714) # should return (21, 34, true),
                # since F(8) = 21, F(9) = 34 and 714 = 21 * 34

  productFib(800) # should return (34, 55, false),
                # since F(8) = 21, F(9) = 34, F(10) = 55 and 21 * 34 < 800 < 34 * 55
  -----
  productFib(714) # should return [21, 34, true],
  productFib(800) # should return [34, 55, false],
  -----
  productFib(714) # should return {21, 34, 1},
  productFib(800) # should return {34, 55, 0},
  -----
  productFib(714) # should return {21, 34, true},
  productFib(800) # should return {34, 55, false},

=end

def productFib(prod)
  x = 0
  y = 1
  while x * y < prod
    x = x + y

    if x * y == prod
      return [y, x, true]
    elsif x * y > prod
      return [y, x, false]
    end

    y = x + y

    if x * y == prod
      return [x, y, true]
    elsif x * y > prod
      return [x, y, false]
    end
  end
end

=begin

Others' solutions:

# best
def productFib(prod)
  a, b = [0, 1]
  while prod > a * b
    a, b = [b, a + b]
  end
  [a, b, prod == a * b]
end

def productFib(prod)
  first, second = *consecutive_fibonacci_numbers.find { |a, b| a * b >= prod }
  [first, second, first * second == prod]
end

def consecutive_fibonacci_numbers
  Enumerator.new do |yielder|
    a, b = 1, 1

    loop do
      yielder.yield([a, b])
      a, b = b, a + b
    end
  end
end

def productFib(prod)
    fib = [1, 1]
    until fib.reduce(:*) >= prod
      fib << fib.shift + fib.first
    end
    fib.reduce(:*) == prod ? fib << true : fib << false
end

def productFib(prod)
  a = b = 1
  loop do
    return [a, b, true] if (a * b) == prod
    return [a, b, false] if (a * b) > prod
    b, a = b + a, b
  end
end

def productFib(prod, f1 = 0, f2 = 1)
    f1 * f2 >= prod ? [f1, f2,  f1 * f2 == prod] : productFib(prod, f2, f1 + f2)
end

=end