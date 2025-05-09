numbers: list[int] = list(range(1,21))
print(numbers)


def is_even(number:int)-> bool:
    return number % 2 == 0

even_number: filter = filter(is_even,numbers)
print(even_number)
print(list(even_number))




