def multiply(*args):
    print(args)
    total  = 1
    for arg in args:
        total = total * arg
    return total



print(multiply(1, 2, 3))


def add(x, y):
    return x + y

nums = [3, 5]
print(add(x=3, y=5))