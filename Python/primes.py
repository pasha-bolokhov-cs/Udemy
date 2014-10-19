
import math


#
# Determine whether the number is prime
def num_is_prime(n):

    if (n < 4):
        return True

    if (int(n) % 2 == 0):
        return False
    
    m = int(math.sqrt(float(n))) + 1

    for k in xrange(3, m + 1):
        if (int(n) % k == 0):
            return False

    return True




#
# Find the prime number No. "n"
def find_prime(n):

    if (n == 0):
        return 0
    if (n == 1):
        return 1
    if (n == 2):
        return 2
    if (n == 3):
        return 3

    s = 5  # consider `3' to be prime already
    c = 3  # we've found it `3' so the next one is `5'
    
    while True:
        if (num_is_prime(s)):
            c += 1
            if (c == n):
                return s
            s += 2
        else:
            s += 2
        
    

#
# Executable code
def main():

    n = 1000
    p = find_prime(n)
    print "Found the `%d'-th prime number `%d'" % (n, p)


#
# Only run main() in the program mode
if (__name__ == "__main__"):
    main()
