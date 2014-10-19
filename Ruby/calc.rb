#!/usr/bin/ruby
#


def a(m, n)
  return m + n
end


def s(m, n)
  return m - n
end


def m(n, k)
  return n * k
end


def d(m, n)
  return m / n
end



print("Give the first number ")
n = Float(gets().chomp())
print("Give the second number ")
k = Float(gets().chomp())

while (1)

  print("Operation (+-*/): ")
  o = gets().chomp()

  case o 
  when "+"
    r = a(n, k)
    break
    
  when "-"
    r = s(n, k)
    break
    
  when "*"
    r = m(n, k)
    break
    
  when "/"
    r = d(n, k)
    break
    
  else
    print("Please choose an operation\n")
    puts()
    puts()
  end

end

print(n, " ", o, " ", k, " = ", r, "\n")

