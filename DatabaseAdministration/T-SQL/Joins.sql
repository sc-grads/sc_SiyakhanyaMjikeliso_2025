select [dbo].[tblEmployee].[EmployeeNumber], [EmployeeFirstName],[EmployeeLastName], sum([Amount]) as SumOfAmount
from [dbo].[tblEmployee]
join [dbo].[tblTransaction]
on [dbo].[tblEmployee].EmployeeNumber = [dbo].[tblTransaction].EmployeeNumber
Group by [dbo].[tblEmployee].[EmployeeNumber], [EmployeeFirstName],[EmployeeLastName]
Order by [EmployeeNumber]

select *