#!/usr/bin/env ruby
#


f = File.new("writefile.txt", "w")
f.print("Hey there!\n")
f.puts("Hey-hey!!!\n")
f.close
