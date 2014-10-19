#!/usr/bin/env ruby
#


module MathList

  def MathList.add(n, *m)
    s = n
    for i in m
      s += i
    end
    return s
  end

  def MathList.sub(n, *m)
    s = n
    for i in m
      s -= i
    end
    return s
  end

  def MathList.mult(n, *m)
    s = n
    for i in m
      s *= i
    end
    return s
  end

end
