

while True:
    try:
        user_input: str = input('Enter a number: ')
        print(f'10/{user_input}= {10 / float(user_input)}')
    except ZeroDivisionError:
        print('You cannot divide by 0')

    except ValueError:
        print('Please enter a valid number....')
    except Exception as e:
        print(f'Something else went wrong: {e}')

