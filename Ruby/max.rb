#!/usr/bin/env ruby
#

l = [45, 34, 37, 92, 23, 356, 2, 235, 342, 54, 32, 254]

m = l[0]
k = 1

while k < l.length
  if l[k] > m
    m = l[k]
  end
  k += 1
end

puts("The maximum is " + m.to_s())
