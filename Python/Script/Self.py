class Fruit:
    def __init__(self,name: str, grams: float)-> None:
        self.name = name
        self.gram = grams

def main() -> None:
    apple:Fruit = Fruit('Apple',25)
    print(apple.name)
    banana: Fruit = Fruit('Banana',10)
    print(banana.name)
if __name__ == '__main__':
    main()