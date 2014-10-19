#!/usr/bin/env ruby
#

def c2f(t)

  raise ArgumentError, "argument is not a number" unless t.is_a? Numeric

  return 32.0 + t * 9.0 / 5.0

end



begin
  print("Give temperature -> ")
  t = gets()
  puts("Conversion: " + c2f(Float(t)).to_s())

rescue
  
  puts("You didn't give a number")

end
