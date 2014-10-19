#!/usr/bin/ruby
#


def add(*nums)

  sum = 0

  for k in nums
    
    sum += k

  end

  return sum
end




def revenue(start, duration, r = 1.2)

  while (duration > 0)

    start *= r
    duration -= 1

  end

  return start
end



print("The sum of 12, 137 and 35 evaluates to `", add(12, 137, 35), "'\n")

puts
puts
print("The default revenue is `", revenue(100, 8), "'\n")
print("The r = 2.0 revenue is `", revenue(100, 8, 2.0), "'\n")
 

