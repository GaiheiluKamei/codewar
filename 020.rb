=begin

Question: Build a pile of Cubes

Description:
  Your task is to construct a building which will be a pile of n cubes. The cube
  at the bottom will have a volume of n ^ 3, the cube above will have volume of (n-1) ^ 3,
  and so on until the top which will have a volume of 1 ^ 3.

  You are given the total volume m of the building. Being given m can you find the
  number n of cubes you will have to build?

  The parameter of the function findNb (find_nb, find-nb, findNb, ...) will be an integer
  m and you have to return the integer n such as n^3 + (n-1)^3 + (n-2)^3 + ... + 1^3 = m
  if such a n exists or -1 if there is no such n.

Examples:
  findNb(1071225) --> 45
  findNb(91716553919377) --> -1

Note - self get:
  1. 此为立方数列
  2. http://www.mathland.idv.tw/fun/Sum_of_cubes.htm
  3. n^3 + (n-1)^3 + (n-2)^3 + ... + 1^3 = (n*(n+1)/2) ** 2
=end

def find_nb(m)
  n = 1
  sum = 0
  while sum < m
    sum += n**3
    return n if sum == m
    n += 1
  end
  -1
end

# solution 2: don't know why, one test failed in codewar
def find_nb_2(m)
  n = Math.sqrt(m)
  n.floor == n ? find_n(n) : -1
end

def find_n(target)
  # n^2 + n - 2 * target = 0
  a = 1
  b = 1
  c = -2 * target
  discriminant = b**2 - 4*a*c
  n1 = (-b + Math.sqrt(discriminant)) / (2*a)
  n2 = (-b - Math.sqrt(discriminant)) / (2*a)
  n1 > n2 ? n1 : n2
end

=begin

Others' solutions:

def find_nb(m)
  n = ((m * 4)**0.25).to_i
  (n**2) * ((n + 1)**2) / 4 == m ? n : -1
end

def find_nb(m)
   counter = 0
   while m > 0
     counter += 1
     m -= counter**3
   end
   m == 0 ? counter : -1
end

def find_nb(m)
  check = Math.sqrt(2* Math.sqrt(m)).floor
  (check * (check + 1)/2)**2 == m ? check : -1
end

=end