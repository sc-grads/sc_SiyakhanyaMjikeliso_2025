


class Student:
    def __init__(self):
        self.name = "Rolf"
        self.grades = (90, 90, 93, 78, 90)
    def average(self):
        return sum(self.grades) / len(self.grades)
    
student =   Student()
print(Student.average(student))
