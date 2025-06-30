class Book:
    def __init__(self, name):
        self.name = name

    def __str__(self):
        return f"Book: {self.name}"

class Bookshelf:
    def __init__(self, *books):  # accepts multiple Book instances
        self.books = books

    def __str__(self):
        return f"Bookshelf with {len(self.books)} books"
