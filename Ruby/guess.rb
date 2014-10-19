#!/usr/bin/ruby
#

a = "W"
t = 0

while (t < 3)

b = gets().chomp
t += 1

if ( b == a )
	puts("ok")
	break
elsif ( t == 3 )
	puts("couldn't")
	break
else
	puts("try again")
end
end


