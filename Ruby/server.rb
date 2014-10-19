#!/usr/bin/env ruby
#


require 'socket'

p = 1500
s = TCPServer.open(p)

loop {
  c = s.accept()
  c.puts("Welcome to the server!")
  c.puts("End of the protocol")
  c.close()
}


