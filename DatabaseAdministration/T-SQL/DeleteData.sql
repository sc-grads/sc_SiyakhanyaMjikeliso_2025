begin transaction

delete [dbo].[tblTransaction] 
from [dbo].[tblEmployee] as E
right join [dbo].[tblTransaction] as T
on E.[EmployeeNumber] = T.[EmployeeNumber]
where E.[EmployeeNumber] is null

select count(*) from [dbo].[tblTransaction]

rollback transaction
select count(*) from [dbo].[tblTransaction]