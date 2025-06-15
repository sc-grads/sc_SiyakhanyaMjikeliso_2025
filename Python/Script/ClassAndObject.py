class Car:
    def __init__(self,brand:str,wheel:int) -> None:
        self.brand = brand
        self.wheel = wheel

    def turn_on(self) -> None:
        print(f'Turning on: {self.brand}')

    def turn_off(self) -> None:
        print(f'Turning off: {self.brand}')

    def drive(self,km: float) -> None:
        print(f'Driving: {self.brand} for {km} Km')


def main() -> None:
    bmw: Car = Car('BMW',3)
    bmw.turn_on()
    bmw.turn_off()
    bmw.drive(10)


if __name__ == '__main__':
    main()

