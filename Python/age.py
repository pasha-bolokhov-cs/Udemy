

name = str(raw_input("Give your name: "))

d1 = int(raw_input("First number of age: "))
print()

d2 = d1 * 5
print "Hey, %s, we multiply %d by 5 :    %d"  % ( name, d1, d2 )
print()

d3 = d2 + 4
print "Next we add 4, and we get %d" % d3
print()


d4 = d3 * 2
print "Next we double all this, and get %d" % d4

print()

e1 = int(raw_input("Second number of age: "))
d5 = d4 + e1
print "We add this second number -->    %d" % d5

print()
print "and we subtract 8:  %d - %d = %d" %  (d5, 8, d5 - 8)

