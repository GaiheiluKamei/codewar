=begin

Question: Check the exam

Description:
  The first input array is the key to the correct answers to an exam, like ["a", "a", "b", "d"].
  The second one contains a student's submitted answers.

  The two arrays are not empty and are the same length. Return the score for this array of answers,
  giving +4 for each correct answer, -1 for each incorrect answer, and +0 for each blank answer,
  represented as an empty string (in C the space character is used).

  If the score < 0, return 0.

Examples:
  checkExam(["a", "a", "b", "b"], ["a", "c", "b", "d"]) → 6
  checkExam(["a", "a", "c", "b"], ["a", "a", "b",  ""]) → 7
  checkExam(["a", "a", "b", "c"], ["a", "a", "b", "c"]) → 16
  checkExam(["b", "c", "b", "a"], ["",  "a", "a", "c"]) → 0

=end

def check_exam(arr1,arr2)
  res = (0..arr1.size-1).map do |i|
    if arr1[i] == arr2[i]
      4
    elsif arr2[i].empty?
      0
    else
      -1
    end
  end.sum

  res < 0 ? 0 : res
end

=begin

Others' solutions:

def check_exam(arr1,arr2)
  res = 0
  arr1.zip(arr2).map{|i,j| res += j == "" ? 0 : i == j ? 4 : -1}
  [res,0].max
end

def check_exam(arr1,arr2)
 [arr2.each_with_index.map { |l, i| l.empty? ? 0 : l == arr1[i] ? 4 : -1 }.sum, 0].max
end

=end