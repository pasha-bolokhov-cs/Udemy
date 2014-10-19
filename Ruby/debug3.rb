#!/usr/bin/env ruby
#


# Fib 0 1 1 2 3 5 8 13 21 34 55 89

t0 = 0
t1 = 1

n = 17

print(t0, " ", t1, " ")
while n > 1 
  t = t0 + t1
  print(t, " ")
  t0 = t1
  t1 = t
  n -= 1
end

print("\n")


