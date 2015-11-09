# assignment commands

# {}

x = 5

# { (x, 5) }

y = 6

# { (x, 5), (y, 6) }

# conditions

if (x > 0 or y == 6):
    x = 0
    z = 10
else:
    x = 1
    z = 11

# { (x, 0), (z, 10) }

# iteration

times = 10
while (times > 0):
    print("Hello")
    times = (times - 1)

# procedures and procedure call

def fun(a, b, c, x):
    result = a *(x * x) + b * x + c
    return result
