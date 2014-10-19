#!/usr/bin/ruby

# a number of times

5.times do
	print ("Hey there!\n")
end

puts()

1.upto(8) do |k|
	print (" k = " + k.to_s() + "\n")
end

puts()

0.step(40,4) { | k | puts( "k = " + k.to_s() ) }

