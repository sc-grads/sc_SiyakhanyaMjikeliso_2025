number: int = 5

while number > 0:
    number -=1

    if number == 2:
        print('skipping 2')
        continue
    print(number)

print('Done!')