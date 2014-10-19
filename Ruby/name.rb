#!/usr/bin/env ruby
#

class Names

  @@number = 0

  attr_reader :fname, :mname, :lname
  attr_writer :fname, :mname, :lname

  def initialize(fname, mname, lname)
    @fname = fname
    @mname = mname
    @lname = lname

    @@number += 1
  end

  def to_s
    @fname + " " + @mname + " " + @lname
  end

  def get_last
    @lname
  end

  def change_first=(f)
    @fname = f
  end

  def self.howmany
    @@number
  end

end


mName = Names.new("Brittany", "Melanie", "Spears")
print mName.inspect()
print "\n"
print mName.to_s()
print "\n"
print "Last name = " + mName.get_last() + "\n"

print "\n"
print "\n"
mName.change_first = "Sarah"
print mName.to_s() + "\n"

print "\n"
mName.mname = "Heather"
print mName.to_s() + "\n"


print "\n"
print "Getting first name = " + mName.fname + "\n"

m1Name = Names.new("Maria", "Isabella", "Denwerk")
m2Name = Names.new("Clair", "Aria", "Fitzpatrick")

print Names.howmany()
print "\n"
