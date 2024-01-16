=begin

Question: Summation Of Primes

Description:
  The sum of the primes below or equal to 10 is 2 + 3 + 5 + 7 = 17. Find the sum of all the
  primes below or equal to the number passed in.

=end


# step: https://ruby-doc.org/3.2.2/Numeric.html#method-i-step
# 素数的筛选方法：埃拉托斯特尼筛法 https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
# 线性筛法的基本思想是，对于每个合数，只用最小的质因数去筛掉它，这样每个合数只会被筛掉一次。这使得线性筛法的时间复杂度
# 比埃拉托斯特尼筛法更低。
# 除了线性筛法之外，还有一些其他改进的素数筛法，如欧拉筛法（Euler Sieve）和区间筛法（Segmented Sieve），它们都是在
# 埃拉托斯特尼筛法的基础上进行了优化，以提高素数筛选的效率。
def sum_of_primes(n)
  primes = (0..n).to_a
  primes[0] = primes[1] = nil

  (2..n**0.5).each do |i|
    next unless primes[i]
    (i**2).step(n, i) { |j| primes[j] = nil }
  end

  primes.compact.sum
end

=begin

Others' solutions:

# 线性筛法：Linear Sieve
def linear_sieve(n)
  primes = []  # 存储素数
  is_prime = Array.new(n + 1, true)  # 标记数组，初始都为素数

  (2..n).each do |i|
    if is_prime[i]
      primes << i  # 将素数加入结果数组
    end
    primes.each do |j|
      break if i * j > n  # 超出范围则退出
      is_prime[i * j] = false  # 将合数标记为false
      break if i % j == 0  # 保证每个合数只被标记一次
    end
  end

  primes
end

require 'prime'
def sum_of_primes(n)
  Prime.each(n).sum
end

def sum_of_primes(n)
  (2..n).select { |num| prime?(num) }.sum
end

def prime?(num)
  return false if num < 2 || num == 4
  (2..Math.sqrt(num)).each { |i| return false if num % i == 0 }
end

=end