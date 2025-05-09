# Supper
from turtle import Shape
from typing import override

class shape:
    def __init__(self, name:str,sides: int) -> None:
        self.name =name
        self.sides = sides

    def describe(self) -> None:
            print(f'{self.name} ({self.sides} sides')
    def shape_method(self) -> None:
        print(f'{self.name}: shape_method()')

class Square(Shape):
    def __init__(self,size: float):
        super().__init__('Square',4)
        self.size = size

    @override
    def describe(self)-> None:
        print(f'I am a {self.name} with a size of {self.size}')


def main() -> None:
    square: Square = Square(20)
    Square.describe()
    square.shape_method()

if __name__ == '__main__':
    main()
