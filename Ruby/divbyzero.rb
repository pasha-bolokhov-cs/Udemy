#!/usr/bin/env ruby
#

begin
  print("Give numerator -> ")
  n = Integer(gets())
  print("Give denominator -> ")
  d = Integer(gets())

  r = n / d

rescue

  print("Give a non-zero denominator -> ")
  d = Integer(gets())
  if (d == 0)
    puts("correcting the denominator to 1")
    d = 1
  end

  r = n / d
end

puts("The ratio is " + r.to_s())
