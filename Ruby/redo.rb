#!/usr/bin/ruby
#

c = "y"

while ( c == "y" )
print ("Enter number 1 ")
n = Integer(gets())
print ("Enter number 2 ")
m = Integer(gets())

if (m == 0)
	print("Can't!\n")
	redo
end
print("Division: " + (n/m).to_s() + "\n")
puts()
print("Again? ")
c = gets().chomp
puts()

end

