import string

from ChatBot import user_input


def is_letter_only() -> None:
    alphabet: str = string.ascii_letters + ''

    for char in text:
        if char not in alphabet:
            raise ValueError ('Text can only contain letter from the alphabet!')
    print(f'"{text}" is letter-only, good job!')

def main() -> None:
    while True:
        try:
            user_input: str = input('Check text: ')
            is_letter_only(user_input)
        except ValueError:
            print('Please only enter English letter')
        