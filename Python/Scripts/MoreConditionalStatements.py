x=5

if x<2:
    print('small')

elif x<10:
    print('Medium')

else :
    print('Large')
print('All done')

#try / except

astr = 'Bob'
try:
    print('hello')
    istr = int(astr)
    print('There')
except:
    istr = -1
    print('Donn')