
#
# calculates squares of numbers in a list
def squares(nums):
    """
    Calculates squares of numbers
    """
    return [k * k for k in nums]


#
# prints words with exclamation signs
def shout(w):
    return [k.upper() + "!!!" for k in w]


#
# find which names have a certain letter
def have_letter(w, l):
    return [k for k in w if l in k]


#
# the main function
def main():

    print
    # get some numbers
    nums = [5, 6, 3, 70, 29, 56, 1, -5, -4, -60, 32]
    print "Numbers are", nums

    # get their squares
    print
    print "Their squares are", squares(nums)

    # get some words
    w = ["Rachel", "Suzanne", "Emilee", "Chloe", "Natalie", "Melanie", "Stephanie", "Rose", "Jessica", "Olive"]
    print
    print "Our words are", w

    # print them with exclamation signs
    print
    print "They are shouted as", shout(w)

    # print the names which have "a" in them
    print
    print "These names have \"a\" in them:", have_letter(w, "a")
    
    # print the names which have "o" in them
    print
    print "These names have \"o\" in them:", have_letter(w, "o")

    # print the names which have "l" in them
    print
    print "These names have \"l\" in them:", have_letter(w, "l")


#
# Call main if this is not being used as a module
#
if __name__ == "__main__":
    main()
