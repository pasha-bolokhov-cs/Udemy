#!/usr/bin/env ruby
#


print("Give file name -> ")
name = gets()

f = File.open(name.chomp(), "a+")

n = 1

while n < 10
  print("Give temperature -> ")
  t = gets()
  f.puts(t)
  n += 1
end

f.close()
