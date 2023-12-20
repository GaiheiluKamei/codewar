=begin

Question: The Supermarket Queue

Description:
  There is a queue for the self-checkout tills at the supermarket. Your task is write a
  function to calculate the total time required for all the customers to check out!

Input:
  customers: an array of positive integers representing the queue. Each integer represents
             a customer, and its value is the amount of time they require to check out.
  n: a positive integer, the number of checkout tills.

Output:
  The function should return an integer, the total time required.

Important:
  Please look at the examples and clarifications below, to ensure you understand the task correctly :)

Examples:
  queue_time([5,3,4], 1)
  # should return 12
  # because when n=1, the total time is just the sum of the times

  queue_time([10,2,3,3], 2)
  # should return 10
  # because here n=2 and the 2nd, 3rd, and 4th people in the
  # queue finish before the 1st person has finished.

  queue_time([2,3,10], 2)
  # should return 12

Clarifications:
  1. There is only ONE queue serving many tills, and
  2. The order of the queue NEVER changes, and
  3. The front person in the queue (i.e. the first element in the array/list) proceeds
  to a till as soon as it becomes free.

  N.B. You should assume that all the test input will be valid, as specified above.

  P.S. The situation in this kata can be likened to the more-computer-science-related idea of
  a thread pool, with relation to running multiple processes at the same
  time: https://en.wikipedia.org/wiki/Thread_pool

=end

################ failed ##############
# def queue_time(customers, n)
#   return customers.sum if n == 1
#   return customers.max if n >= customers.size
#   return customers.max if customers.max > (customers - [customers.max]).sum
#
#   res = []
#   start = customers.take(n)
#
#   (customers - start).each do |e|
#     m = start.min
#     res << m
#     start.delete(m)
#     start.map! { |x| x - m }
#     start << e
#   end
#
#   res.sum + start.max
# end
def queue_time(customers, n)
  arr = Array.new(n, 0)
  customers.each { |customer| arr[arr.index(arr.min)] += customer }
  arr.max
end

=begin

Others' solutions:

def queue_time(customers, n)
  arr = Array.new(n, 0)
  customers.each { |customer| arr[arr.index(arr.min)] += customer }
  arr.max
end

def queue_time(customers, n)
  return 0 if customers.empty?
  return customers.reduce(:+) if n == 1
  return customers.max if n > customers.length
  till = Array.new(n, 0)
  customers.each do |c|
    index = till.index(till.min)
    till[index] += c
  end
  return till.max
end

=end