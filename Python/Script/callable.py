fruit: str = 'Apple'
number: int = 10

def func()-> None:
    print('func() was called')


print(f'callable(): {callable(fruit)}')


if callable(func()):
    func()
else:
    print('Object is not callable')