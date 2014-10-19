#!/usr/bin/env ruby
#

class Student
  def initialize(n)
    @n = n
    @grades = []
  end

  def to_s
    puts("Name: " + @n)
    print(@grades)
    print "\n"
  end

  def newGrade(g)
    @grades.push(g)
  end

  def average
    sum = 0
    for g in @grades
      sum += g
    end
    sum / @grades.count()
  end

end


s = Student.new("Nicole Finn")
s.newGrade(45)
s.newGrade(68)
s.newGrade(58)

s.to_s()

print s.average().to_s() + "\n"

