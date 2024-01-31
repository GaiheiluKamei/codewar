=begin

Question: Primes in numbers

Description:
  Given a positive number n > 1 find the prime factor decomposition of n. The result will be a string with the
  following form:
    "(p1**n1)(p2**n2)...(pk**nk)"

  with the p(i) in increasing order and n(i) empty if n(i) is 1.

Example: n = 86240 should return "(2**5)(5)(7**2)(11)"

=end

require 'prime'

def prime_factors(n)
  Prime.prime_division(n).map { |x| x.last == 1 ? "(#{x.first})" : "(#{x.first}**#{x.last})" }.join
end

=begin

Others' solutions:

def primeFactors(n)
    res = ""
    fac = 2
    while (fac <= n) do
        count = 0
        while (n.modulo(fac) == 0)
            count += 1
            n = n / fac
        end
        if (count > 0) then
            res << "(" + fac.to_s + (count > 1 ? "**" + count.to_s : "") + ")"
        end
        fac += 1
    end
    res
end

require 'prime'
def primeFactors(n)
  n.prime_division.map {|factor, times| times == 1 ? "(#{factor})" : "(#{factor}**#{times})"}.join
end

=end