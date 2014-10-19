#!/usr/bin/ruby
#



def sq(n)
  n * n
end



def power(b, e)
  p = 1
  while e > 0
    p *= b
    e -= 1
  end
  
  return p
end


num = 31
print("The square of " + num.to_s() + " is " + sq(num).to_s() + "\n")
print("\n")

num = 8
raisepower = 3
print(num.to_s() + " to the power of " + raisepower.to_s() + 
      " is " + power(num, raisepower).to_s() + "\n")
