#!/usr/bin/ruby
#


def tip(a)

  return a * 0.14

end



print("Give the amount: ")
a = Float(gets().chomp())
charge = a + tip(a)
print("The total expense is `" + charge.to_s() + "'\n")
