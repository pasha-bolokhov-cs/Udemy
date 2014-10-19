#!/usr/bin/env ruby
#

class Employee

  attr_reader :name

  def initialize(name, rate)
    @name = name
    @rate = rate
  end

  def pay(h)
    return @rate * h
  end

end


class Manager < Employee
  
  def initialize(name, rate, s)
    super(name, rate)
    @s = s
  end


  def pay(h)
    if (@s)
      return @rate
    else
      return @rate * h
    end
  end
  
end


e = Employee.new("Jessica May", 20)
print(e.name, " pay: ", e.pay(16), "\n")

m = Manager.new("Silvia Crowford", 2000, true)
print(m.name, " pay: ", m.pay(0), "\n")

n = Manager.new("Ashley Daughters", 22, false)
print(n.name, " pay: ", n.pay(18), "\n")
