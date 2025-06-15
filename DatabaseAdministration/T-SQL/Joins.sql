select [dbo].[tblEmployee].[EmployeeNumber], [EmployeeFirstName],[EmployeeLastName], sum([Amount]) as SumOfAmount
from [dbo].[tblEmployee]

left outer join [dbo].[tblTransaction]

join [dbo].[tblTransaction]

on [dbo].[tblEmployee].EmployeeNumber = [dbo].[tblTransaction].EmployeeNumber
Group by [dbo].[tblEmployee].[EmployeeNumber], [EmployeeFirstName],[EmployeeLastName]
Order by [EmployeeNumber]


select * from tblEmployee where [EmployeeNumber] = 1046

select * from tblTransaction where [EmployeeNumber] = 1046

select *

