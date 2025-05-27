select [Department] as NumberofDepartment
from
(select [Department], count(*) as NumberOfDepartment 
from [dbo].[tblEmployee]
GROUP BY [Department]) AS NewTable

--derived table
select distinct Department, convert(varchar(20), N'') as DepartmentHead
into tblDepartment
from [dbo].[tblEmployee}

select * from [dbo].[tblDepartment]



