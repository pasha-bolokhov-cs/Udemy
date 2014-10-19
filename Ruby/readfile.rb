#!/usr/bin/env ruby
#


print "Give file name -> "
name = gets()

File.open(name.chomp()) do |f|
  while (line = f.gets())
    puts line
  end
end


