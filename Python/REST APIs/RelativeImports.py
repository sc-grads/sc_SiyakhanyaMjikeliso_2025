#absolute
from libs import mylib

# Inside mylib.py
from libs.operations import operator

# Inside operator.py
print("operator.py loaded")

#Relative
# mylib.py inside libs/
from .operations import operator

# operator.py inside libs/operations/
from .. import mylib