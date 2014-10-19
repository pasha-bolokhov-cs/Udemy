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


class Rectangle < Shape

  def initialize(x, y, w, h)
    super(x, y)
    @w = w
    @h = h
  end

  def to_s
    return super + " w: " + @w.to_s() + " h: " + @h.to_s()
  end

end


class Square < Rectangle

  def initialize(x, y, w)
    super(x, y, w, w)
  end

  def to_s
    return "Square  " + super
  end

end



s = Square.new(1, 5, 4)
puts s.to_s()
