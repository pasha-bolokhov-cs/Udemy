#!/usr/bin/env ruby
#

require './constants.rb'

class Circle

  def initialize(r)
    @r = r
  end

  def area
    return Constants::PI * @r * @r
  end

end



c = Circle.new(10)
puts("Area is " + c.area().to_s())
