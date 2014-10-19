#!/usr/bin/python
#encoding: utf-8

"""
Given two letters, find all words in "alice.txt"
which start these two letters
"""


import re


##
## The main() function
def main():
    """
    This is the main execution
    """

    WORDSFILE = "alice.txt"

    
    ##
    ## The main loop
    while True:

        # Open the file
        try:
            f = open(WORDSFILE, "rU")
        except:
            print "Could not open `%s'" % WORDSFILE
            exit()

        # Ask for two letters
        print
        print
        le = str(raw_input("Give a few letters (`!' to quit): "))

        if (le == "!"):
            break

        if (len(le) == 0):
            print
            print "Need a few letters"
            print
            continue

        # Now scan all words
        list = []

        for l in f:
            # find a list of words
            res = re.findall("\s%s\w*" % le, l)

            for w in res:              # for every word found
                if (not(w in list)):
                    list.append(w)
                
        f.close()
                
        if (len(list) == 0):
            print "No words starting from `%s' found" % le
        else:
            print
            print "----------------------------------------------"
            print "These are the words (%d) that start with `%s':" \
                  % ( len(list), le )
            print "----------------------------------------------"
            print list
            print

    ## Ending the program
    print
    print
    print "Bye!"
    print
    print

## End of main()




##
## Check to see that the program is run as an executable


if (__name__ == "__main__"):
    main()
