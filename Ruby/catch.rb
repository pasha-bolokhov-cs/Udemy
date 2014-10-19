#!/usr/bin/env ruby
#


l = [2, 4, 6, 7, 7, 2, 6, 8, 345, 365, 764 , 346, 653]

p = l.length - 1

catch (:stop) do
  
  while p > 0

    for i in 0 .. p - 1
      puts(l[i])
      if (i > 6)
	throw :stop
      end
    end
    p -= 1
  end
  
end
