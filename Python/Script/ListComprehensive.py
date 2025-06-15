numbers: list[int] = [1,2,3]

doubled:list[int] = []
for number in numbers:
    doubled.append(number * 2)

doubled_lc: list[int] = [number * 2 for number in numbers]
print(doubled_lc)
