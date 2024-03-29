def collatz(n, i):

    if i == 0:
        return n
    
    while i != 0:
        if n%2==0:
            n/=2
        else:
            n=3*n+1

        i-=1
        
    return n

collatz(10, 2)