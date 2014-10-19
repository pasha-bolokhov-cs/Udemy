
cc = {}

def ao(c):
  if c in cc:
    cc[c] += 1
  else:
    cc[c] = 1

ao("AA")
print cc
ao("BB")
print cc
ao("AA")
print cc

print len(cc)
