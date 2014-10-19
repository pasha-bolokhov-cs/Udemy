
#
#
# executable body
def main():

    #
    # ask for the total amount
    while True:
        try:
            amount = str(raw_input("What is the total amount: "))
            amount = float(amount)
            break
    
        except:
            print "`%s' is not a number" % str(amount)
            print
    
    
    #
    # ask for the number of participants
    print
    while True:
        try:
            n = str(raw_input("How many participants? "))
            n = int(n)
            break
    
        except:
            print "`%s' is not a integer number" % str(n)
            print
    
    #
    # ask for the interest percentage
    print
    while True:
        try:
            p = str(raw_input("What is the tip? "))
            p = float(p)
            break
    
        except:
            print "`%s' is not a number" % str(p)
            print
    
    #
    # print the result
    print
    print "The individual contribution is %g" % \
          round(amount * (1.0 + p/100.0) / (float(n)), 2)

#
# Execute only in the program mode
if (__name__ == "__main__"):
    main()

