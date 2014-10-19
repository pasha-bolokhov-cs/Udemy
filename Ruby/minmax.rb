#!/usr/bin/ruby
#

n = []
k = 0
while k < 10
   n[k]  =  Random.rand(101)
   k   +=   1
end

print(n)
puts()
puts()

max = n[0]
k = 0
for k in 1..9
	if ( n[k] > max )
		max = n[k]
	end
end

print ("Max is " + max.to_s + "\n")
puts()

min = n[0]
for k in 1..9
	if ( n[k] < min )
		min = n[k]
	end
end
print ("Min is " + min.to_s + "\n")
puts()

