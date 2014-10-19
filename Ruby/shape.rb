#!/usr/bin/env ruby
#

class Shape

  attr_reader :x, :y
  attr_writer :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def to_s
    "x: " + @x.to_s() + ", y: " + @y.to_s()
  end

  def move(x, y)
    @x = x
    @y = y
  end
 
end

s = Shape.new(100, 200)
puts (s.to_s())

s.move(400, 500)
puts (s.to_s())
