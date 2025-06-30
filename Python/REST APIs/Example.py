class Book:
    TYPES = ("HARDCOVER","PAPERBACK")

    def __init__(self,name, book_type, wiegth):
        self.name = name
        self.book_type =book_type
        self.wiegth = wiegth

    def __repr__(self):
          return f"<Book {self.name}, {self.book_type}, weighing {self.wiegth}g>"
    
    @classmethod
    def hardcover(cls, name, page_weight):
         return Book(name, Book.TYPES[0], page_weight + 100)
       
book = Book.hardcover("Harry Potter", 1500)

print(book)

