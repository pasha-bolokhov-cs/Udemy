

def main():

    s = 0
    ss = ""
    for n in range(20):
        if (n > 0):
            ss += " + "
        ss += str(n)
        s += n

    print ss
    print("The sum is now %d, but it should be %d" \
          % (s, (20 * (20 - 1 )) / 2))

    tt = ["Jackie", "Rachel", "Rita", "Megan", "Kira", "Mila", "Natalie",
          "Nicole", "Bethany", "Malvina", "Lucy", "Ruthy"]
    for s in tt:
        print s + " "

    s=0
    while (tt[s] != "Lucy"):
        if (tt[s] == "Bethany"):
            break
        if (tt[s] == "Mila"):
            s += 1
            continue
        print("printing name: %s" % tt[s])
        s += 1
    

if __name__ == "__main__":
    main()

