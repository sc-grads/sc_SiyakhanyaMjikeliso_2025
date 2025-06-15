from dataclasses import dataclass, field

@dataclass()
class Fruit:
    name: str
    grams: float
    price_per_kg: float
    edible: bool = True
    related_fruits: list[str] = field(default_factory=list)

def main() -> None:
        apple: Fruit = Fruit('Apple',100,5)
        pear: Fruit = Fruit('Pear', 250,10, related_fruits=['Apple','Orange'])
        print(apple)

if __name__ == '__main__':
        main()
