#!/usr/bin/python
#encoding: utf-8


"""
The words game
"""


import operator


##
##
def getword(prompt):
    """
    Gets a letter input from the user
    Keeps asking until just a single letter is given
    or the user types "quit"

    Returns the letter entered
    """
    while True:
        l = str(raw_input(prompt)).lower()
        if (len(l) == 1):
            return l

        if (l == "quit"):
            print
            quit()
        
        print "`%s' is not a single letter" % l
        print




##
##
def getrounds():
    """
    Keeps asking the user until either a positive integer or "q" is given
    """

    while True:
        R = str(raw_input("How many rounds? "))

        if (R.lower() == "q"):
            print
            quit()
                
        try:
            R = int(R)
        except:
            print "`%s' not a number" % R
            print
            continue
        
        if (R <= 0):
            print "`%d' not a positive number" % R
            print
            continue

        return R
    



##
##
def noway(curr, dict):
    """
    Checks if the current part of the word is not capable to be completed
    to a legal word
    """

    # Loop through all words
    for w in dict.keys():

        # check the portion for the first match
        l = len(curr)
        if ((l <= len(w)) and (str(curr) == str(w[:l]))):
            return False

    # didn't find any matching word
    return True
                



##
## The main() function

def main():

    WORDSFILE = "alice.txt"
    
    
    ## Print the welcome
    
    print
    print "*******************************************************************"
    print
    print "Welcome to the Words Game"
    print
    print "The collection of words is borrowed from `%s'" % WORDSFILE
    print
    print "*******************************************************************"
    print
    
    
    ## Load the words
    try:
        f = open(WORDSFILE, "rU")
    except:
        print "Could not open `%s'" % WORDSFILE
        exit()
    
    total_dict = {}
    for l in f:
        
        words = l.lower().split()
    
        for w in words:
    
            # omit strings of length one
    
            if (len(w) == 1):
                continue
            
            if (w in total_dict):
                total_dict[w] += 1
            else:
                total_dict[w] = 1
    
    f.close()
    
    
    ##
    ## The main loop
    
    while True:
    
        ##
        ## Get the number of rounds
        R = getrounds()
    
        ##
        ## Restore the dictionary
        dict = total_dict.copy()

        ##
        ## Keep scores
        score1 = 0
        score2 = 0
    
        
        ##
        ## Go for that many rounds
        for r in xrange(0, R):
        
            print
            print
            print
            print "***********"
            print "Round %d:\t\tPlayer 1: %d\t\t Player 2: %d" % ((r + 1), score1, score2)
            print "***********"
            print
            print

            curr = ""
            #
            # Loop until a word is complete
            while True:

                # Get a letter from Player 1
                l = getword("Player 1 > ")

                # Append the letter
                curr += l

                # Print the result
                print "The word is\t->\t`%s'" % curr.upper()
                print

                # Check if there's such a word
                if (curr in dict):
                    print
                    print "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
                    print
                    print
                    print "`%s' is a complete word  (found `%d' times)" % (curr.upper(), int(dict[curr]))
                    print 
                    print " Player 2 wins!!!\t\t (+%d points)" % int(dict[curr])
                    print
                    print
                    print "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
                    print
                    score2 += int(dict[curr])
                    # erase the word
                    del(dict[curr])
                    # go to the next round
                    break

                # Check if there can't be a word formed
                if (noway(curr, dict)):
                    print
                    print "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
                    print
                    print
                    print "`%s' CANNOT form a word" % curr.upper()
                    print 
                    print " Player 2 wins!!!\t\t (+%d points)" % 5
                    print
                    print
                    print "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
                    print
                    score2 += 5
                    break


                # Get a letter from Player 2
                l = getword("Player 2 > ")

                # Append the letter
                curr += l

                # Print the result
                print "The word is\t->\t`%s'" % curr.upper()
                print

                # Check if there's such a word
                if (curr in dict):
                    print
                    print "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
                    print
                    print
                    print "`%s' is a complete word  (found `%d' times)" % (curr.upper(), int(dict[curr]))
                    print 
                    print " Player 1 wins!!!\t\t (+%d points)" % int(dict[curr])
                    print
                    print
                    print "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
                    print
                    score1 += int(dict[curr])
                    # erase the word
                    del(dict[curr])
                    # go to the next round
                    break

                # Check if there can't be a word formed
                if (noway(curr, dict)):
                    print
                    print "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
                    print
                    print
                    print "`%s' CANNOT form a word" % curr.upper()
                    print 
                    print " Player 1 wins!!!\t\t (+%d points)" % 5
                    print
                    print
                    print "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
                    print
                    score1 += 5
                    break

                # There it comes for the next iteraction of letters

            # There it comes for the next round

        ##
        ## Statistics
        print
        print
        print "*"*50
        print
        print "Player 1 (`%d' points)\t\t Player 2(`%d' points)" % (score1, score2)
        print
        print "*"*50
        print
        if (score1 > score2):
            print "Player 1 WON!!!!!!!!!!!!!!!!!"
        elif (score2 > score1):
            print "Player 2 WON!!!!!!!!!!!!!!!!!"
        else:
            print "A TIE!!!!!!!!!!!!!!!!!!!!!!!!"
        print

        ##
        ## Play again?
        PROMPT = """
    
-----------------------------------------------   
Enter `q' to quit, anything else to play again: """
        a = str(raw_input(PROMPT)).lower()
        print """-----------------------------------------------

"""
        if (a == "q"):
            break
    
    
    
    
    ##
    ## Out of the main loop -- quitting
        
    print """
    
    
    ######################################################
    
                      G A M E   O V E R
                      
    ######################################################
    
                      
    """

    ## End of main()




##
## Check to see that the program is run as an executable
if (__name__ == "__main__"):
    main()
    
