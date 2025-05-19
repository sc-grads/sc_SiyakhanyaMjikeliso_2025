declare @mydate as datetime = '2015-06-24 12:35:56.124'
select @mydate as MyDate

declare @mydate2 as datetime2(3) = '2015-06-24 12:35:56.124'
select @mydate2 as MyDate

select DATEFROMPARTS(2015,06,24) as ThisDate
select DATETIME2FROMPARTS(2015,06,24,12,34,56,124,5) as ThisDate
select year(@mydate) as myYear, MONTH(@mydate) as MyMonth, day(@mydate) as myDay