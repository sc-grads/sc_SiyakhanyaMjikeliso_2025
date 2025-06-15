--Initialise a variable, give it a data type and an initial value

Declare @myvar AS numeric(7,2) = 3 

Select Power(@myvar,2) -- Power function
Select SQUARE(@myvar)
SELECT SQRT(@myvar)

GO

Declare @myvar as numeric(7,2) = 3.7

Select FLOOR(@myvar)
Select CEILING(@myvar)
Select ROUND(@myvar,-1) As Roundd

Go

Select PI() as MyPI
Select EXP(1) as e 

DECLARE @myvar as numeric(7,2) =-456
select ABS(@myvar) as myABS, SIGN(@myvar) as mySign


go 
Select Rand(555)


