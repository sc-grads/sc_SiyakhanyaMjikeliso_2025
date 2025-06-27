def divide(x, y):
    if y == 0:
        raise ZeroDivisionError("Cannot divide by zero")
    return x / y

def calculate(*values, operator):
    return operator(*values)
