#!/usr/bin/ruby
#

print ("Give a sentence: ")
s = gets().chomp()

ll = s.split(//)

v = 0
for l in ll
    case l
    	when 'a','o','u','e','i','y',"A","O","U","E","I","Y" then v += 1
    end
end

print ("There are " + v.to_s() + " vowels\n")

