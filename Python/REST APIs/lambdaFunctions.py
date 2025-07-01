def add(x, y):
    return x+ y



add= lambda x, y: x+ y

print(add(5,7))

def double(x):
    return x * 2

sequence = [1,2,2,9]
doubled = [double(x) for x in sequence]
doubled = list(map(lambda x: x *2, sequence))
