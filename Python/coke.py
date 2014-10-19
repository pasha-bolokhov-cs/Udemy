#encoding: utf-8


#
# Peform the split
def split(num):

    try:
        int(num)
        assert type(num) == int, "the number is not integer"
        assert num >= 0, "not a positive number"
        
    except:
        print "split(): `%s' not a number" % str(num)
        return

    n6 = int(num) / 6
    n9 = int(num) / 9
    n20 = int(num) / 20

    for k6 in xrange(0, n6 + 1):
        
        for k9 in xrange(0, n9 + 1):
            
            for k20 in xrange(0, n20 + 1):

                if (k20 * 20 + k9 * 9 + k6 * 6 == num):
                    print "`%d'\t20-packs,\t\t `%d'\t9-packs\t\t and\t `%d'\t6-packs" % \
                           (k20, k9, k6)
                    return

    #
    # didn't find anything!
    print "split(): could not break the amount `%d'" % int(num)



#
# Perform a normal cycle
def do_run():

    while True:
        num = str(raw_input("How many (`q' to quit)? "))

        if (num.lower() == "q"):
            break

        try:
            num = int(num)

        except:
            print "`%s' not a number" % num
            print
            continue

        split(num)




#
# Perform a test
def do_test():

    t = 54
    raw_input("Test `%d' " % t)
    print
    split(t)
    print
    
    t = 44
    raw_input("Test `%d' " % t)
    print
    split(t)
    print
    
    t = 82
    raw_input("Test `%d' " % t)
    print
    split(t)
    print

    
    t = 14
    raw_input("Test `%d' " % t)
    print
    split(t)
    print

    t = "abcd"
    raw_input("Test `%s' " % t)
    print
    split(t)
    print
    



#
# Executable code
def main():

    while True:
        a = str(raw_input("Give mode (`test' for test, [ENTER] for run): "))
        if (a.lower() == "test"):
            print
            do_test()
            break
        elif (a == ""):
            print
            do_run()
            break
        else:
            print "Not a valid command"
            print


#
# Only run main() in the program mode
if (__name__ == "__main__"):
    main()
