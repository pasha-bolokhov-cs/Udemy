#!/usr/bin/env ruby
#

require "socket"

h = "localhost"
p = 1500

s = TCPSocket.open(h, p)

while (l = s.gets())
  puts l.chomp()
end


s.close()


