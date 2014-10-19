#!/usr/bin/env ruby
#


begin

  print("Give a file name -> ")
  n = gets()
  f = File.open(n.chomp())
  l = f.read()
  puts l

rescue
 
  puts("You entered a non-existed filename")
  puts
  retry

end

