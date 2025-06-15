
Declare @chrASCII as varchar(10) = 'hellothere'

Declare @chrUNICODE as nvarchar(10) = N'hello?'

select len(@chrASCII) as mylen
 select Datalength(@chrASCII) as mydatalength

Select left(@chrASCII,2) as myASCII, right(@chrUNICODE,2) as myUNICODE
select SUBSTRING(@chrASCII,2,3) as middleletter

Declare @chrASCII as varchar(10) = '  hellothere  '

Declare @chrUNICODE as nvarchar(10) = N'hello?'

Select left(@chrASCII,2) as myASCII, right(@chrUNICODE,2) as myUNICODE
select SUBSTRING(@chrASCII,3,2) as middleletter

Select LTRIM(RTRIM(@chrASCII)) AS MYTRIM
SELECT REPLACE(@chrASCII,'l','L')
