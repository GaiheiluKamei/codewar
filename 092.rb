=begin

Question: Who has the most money?

Description:
  You're going on a trip with some students and it's up to you to keep track of how much
  money each Student has. A student is defined like this:

  class Student
    attr_reader :name
    attr_reader :fives
    attr_reader :tens
    attr_reader :twenties

    def initialize(name, fives, tens, twenties)
      @name = name
      @fives = fives
      @tens = tens
      @twenties = twenties
    end
  end

  As you can tell, each Student has some fives, tens, and twenties. Your job is to return the
  name of the student with the most money. If every student has the same amount, then return "all".

Notes:
  Each student will have a unique name
  There will always be a clear winner: either one person has the most, or everyone has the same amount
  If there is only one student, then that student has the most money

=end

def most_money(students)
  # NOTE: the Student class is preloaded
  tmp = students.map { |s| [s.name, s.fives*5+s.tens*10+s.twenties*20] }.transpose
  tmp.first.size == 1 ? tmp.first.first : tmp.last.uniq.size == 1 ? 'all' : tmp.first[tmp.last.index(tmp.last.max)]
end

=begin

Others' solutions:

# 1.
class Student
  def total_money
    (fives * 5) + (tens * 10) + (twenties * 20)
  end
end

def most_money(students)
  return "all" if students.length > 1 && students.map(&:total_money).uniq.length == 1
  students.max_by(&:total_money).name
end

# 2.
def most_money(students)
  winners = students.group_by { |s| s.fives * 5 + s.tens * 10 + s.twenties * 20 }.sort.last.last
  winners.one? ? winners.first.name : 'all'
end

# 3.
def most_money(students)
  a = students.map{|x| x.fives * 5 + x.tens * 10 + x.twenties * 20}
  a.size > 1 && a.uniq.size == 1 ? "all" : students[a.index(a.max)].name
end

=end