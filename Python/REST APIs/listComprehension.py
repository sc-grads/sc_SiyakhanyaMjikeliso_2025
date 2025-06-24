numbers = [1, 3, 5]
doubled = [num * 2 for num in numbers]


friends = ["Siya", "Rolf","Sam","Samantha", "Jen"]
start_s = []

for friend in friends:
    if friend.startswith("S"):
        start_s.append(friend)


print(start_s)