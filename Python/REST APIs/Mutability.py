a = 8597
b = 8597

print(id(a))  # same id as b because Python reuses integers internally
print(id(b))

a = 8598

print(id(a))  # different now, because a points to a new int object
print(id(b))  # still the old int object
