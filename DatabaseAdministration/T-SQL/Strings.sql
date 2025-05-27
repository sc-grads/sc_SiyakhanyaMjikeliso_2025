--char - ASCII - 1 byte
--varchar - ASCII - 1 byte
--nchar - Unicode - 2 byte
--nvarchar -Unicode - 2 byte


Declare @chrMyCharacters as nvarchar(20)

set @chrMyCharacters = N'hello?'

select @chrMyCharacters as myString, len(@chrMyCharacters) as Mylength, DATALENGTH(@chrMyCharacters) AS MYDataLength
 