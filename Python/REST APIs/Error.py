students = [
    {"name": "Bob", "grades": [90, 75]},
    {"name": "Rolf", "grades": []},
    {"name": "Jen", "grades": [88, 92]}
]

for student in students:
    try:
        average = divide(sum(student["grades"]), len(student["grades"]))
    except ZeroDivisionError:
        print(f"Error: {student['name']} has no grades.")
    else:
        print(f"{student['name']}'s average is {average}")
    finally:
        print("Done with", student["name"])
