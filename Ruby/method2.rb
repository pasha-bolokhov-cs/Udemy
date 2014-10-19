#!/usr/bin/ruby
#


def say(message)

  print(message)

end



def increase(list, points)

  list.map! { |g|  g += points }

end


#say("Hey, there!\n")
#say("Give a value: ")
#v = gets()
#print("The value is " + v)


list = [ 20, 30, 70, 120 ]
print("List before increase: ", list, "\n")
increase(list, 4)
print("After the increase:")
list.each { |g| print(" ", g) }
print("\n")


