def description(numbers: list[int]) -> dict:


    details: dict = {'length': (n_length := len(numbers)),
                     'sum': (n_sum := len(numbers)),
                     'mean': n_sum / n_length}
    return  details

def main() -> None:
    number: list[int] = [1,10,5,200,-4,7]
    print(description(number))
if __name__ == '__main__':
    main()