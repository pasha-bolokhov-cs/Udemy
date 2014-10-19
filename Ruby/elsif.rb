#!/usr/bin/ruby
#

print("Give a grade: ")
g = Integer(gets())

puts()

if ( g >= 90 )
	l = 'A'
elsif ( g >= 80 )
	l = 'B'
elsif ( g >= 70 )
	l = 'C'
elsif ( g >= 60 )
	l = 'D'
else
	l = 'F'
end

print ("The mark is '" + l + "'\n")

