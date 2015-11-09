if (n > 0 and n == round(n)):
    length = 1
    print (n)
    while (n != 1):
        if ((n % 2) == 0):
            n = n//2
            print(n)
        else:
            n = 3*n+1
            print(n)
        length = length + 1
    times = 1
    while (n == 1 and times == 1):
        print(length)
        print(None)
        times = (times -1)
else: print("ERROR")

        
    

