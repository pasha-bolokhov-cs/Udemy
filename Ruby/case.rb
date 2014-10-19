#!/usr/bin/ruby
#


print("Give a grade ")
g = Integer(gets())

puts()

case g
	when 90..100    
		l = 'A'
	when 80..90     
		l = 'B'
	when 70..80     
		l = 'C'
	when 60..70     
		l = 'D'
	else            l = 'F'
end

print("letter is '" + l + "'\n")

