#!/usr/bin/env ruby
#

class Person
  def initialize(n, a)
    @n = n
    @a = a
  end

  def to_s
    "Name: " + @n + "\n" +
      "Age: " + @a.to_s() + "\n"
  end

  def birthday
    @a += 1
  end
end


p = Person.new("Samantha Aquerville", 15)
q = Person.new("Anastasia Wronsky", 16)
r = Person.new("Alana Clemenine Stanley", 14)

print p.to_s()
print q.to_s()
print r.to_s()

q.birthday()
r.birthday()
r.birthday()

print "\n"
print q.to_s()
print r.to_s()
