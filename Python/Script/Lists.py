people: list[str] = ['Bob', 'James','Tom']
print(people[0])
print(people[2])
print('Original:',people)

#Append
people.append('Jeremy')
print(people)

#Remove
people.remove('Bob')
print(people)

#Pop
people.pop()
print(people)

#Change
people[0] = 'Charlotte'
print(people)

#Insert
people.insert(1, 'timothy')
print(people)

# clear
people.clear()
print(people)

