numbers: list[int] = [1,2,3,4]
letter: list[str]= ['A','B','C','D']
symbol: list[str] = ['!','$','R']

zipped: zip = zip(numbers,letter)
print(zipped)
print(list(zipped))
