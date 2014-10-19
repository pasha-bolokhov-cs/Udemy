#!/usr/bin/env ruby
#


begin

  puts(3/2)
  File.open("1-1-Non-existent.file")

rescue ZeroDivisionError

  puts("Attempted to divide by zero")

rescue SystemCallError => message

  puts(message)

end
