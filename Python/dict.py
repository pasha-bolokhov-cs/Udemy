

from operator import itemgetter


NAME = "alice.txt"
HOWMANYTOPWORDS = 20

try:
    f = open(NAME, "rU")
except:
    print "Could not open `%s'" % NAME
    exit()

#
d = {}
#
for l in f:
    
    words = l.split()
    
    for w in words:
        
        w = w.lower()
        if w in d:
            d[w] += 1
        else:
            d[w] = 1


f.close()


##
res = sorted( d.iteritems(), key = itemgetter(1), reverse = True )


##
for k in list(res[:HOWMANYTOPWORDS]):
    print "'%s'\t\t\t-->\t\t\t%d" % (str(k[0]), int(k[1]))


