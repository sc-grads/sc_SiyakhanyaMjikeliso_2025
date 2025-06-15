select [Department] as NumberofDepartment
from
(select [Department], count(*) as NumberOfDepartment 
from [dbo].[tblEmployee]
GROUP BY [Department]) AS NewTable

--derived table
select distinct Department, convert(varchar(20), N'') as DepartmentHead
into tblDepartment


select * from [dbo].[tblDepartment]



