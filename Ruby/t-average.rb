#!/usr/bin/env ruby
#


num = 0
sum = 0

print("Give file name -> ")
name = gets()

File.open(name.chomp()) do |f|

  while (l = f.gets())
    sum += Float(l.chomp())
    num += 1
  end

  if (num > 0)
    print("The average is " + (sum / num).to_s() + "\n")
  end

end

