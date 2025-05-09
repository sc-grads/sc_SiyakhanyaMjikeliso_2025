numbers: list[int] = [1,2,3,4,5]

doubled: map = map(lambda n: n * 2,numbers)
print(doubled)
print(list(doubled))