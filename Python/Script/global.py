
from typing import Any


text: str = 'Bob'
my_list: list[int] = [1,2,3]


def func() -> None:
    ...

my_global: dict[str,Any] =dict(globals())
print(my_global)

for k, v in my_global.items():
    print(f'{k}: {v}')
