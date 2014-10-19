#!/usr/bin/env ruby
#


l = [34, 54, 45, 56, 72, 27, 35, 47]

m = l[0]

for k in l
  if (k < m)
    m = k
  end
end

puts("the mininum is " + m.to_s())

