#!/usr/bin/ruby
#

print ("Who gave the gift? ")
name = gets.chomp
print ("What kind of present? ")
p = gets.chomp
print ("How old? ")
a = Integer(gets)

print("You? ")
y = gets.chomp

print ("\n\n")
puts ("Dear " + name + ", ")
puts
puts ("Thank you for the " + p + "!")
puts ("I like it. I can't believe")
puts ("that I am already " + a.to_s + " years old.")
puts ("Being " + a.to_s + " feels just like " + (a - 1).to_s + ".")
puts
puts ("Yours")
puts
puts (y)
