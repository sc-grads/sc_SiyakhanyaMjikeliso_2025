names: list[str] = ['Bob', 'JAmes', 'Samantha', 'Luigi','Joe']
sorted_names: list[str] = sorted(names, key=lambda x: len(x) )
print(sorted_names)
