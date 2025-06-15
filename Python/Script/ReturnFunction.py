def get_length(text:str) -> int:
    print(f'Getting the length of:"{text}"...')
    return len(text)

name: str = 'MArio'
print(get_length(name))