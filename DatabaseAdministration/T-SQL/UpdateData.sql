select * from [dbo].[tblEmployee] where [EmployeeNumber] = 194
select * from [dbo].[tblTransaction] where [EmployeeNumber] = 3
select * from [dbo].[tblTransaction] where [EmployeeNumber] = 194

begin tran
--select * from [dbo].[tblTransaction] where [EmployeeNumber] = 194
update [dbo].[tblTransaction]
set [EmployeeNumber] = 194
output deleted.*
from [dbo].[tblTransaction]
where [EmployeeNumber] in (3,5,7,9) 

--select * from [dbo].[tblTransaction] where [EmployeeNumber] = 194
rollback tran
