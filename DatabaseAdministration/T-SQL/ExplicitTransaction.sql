begin transaction
select * 
from [dbo].[tblEmployee]
update [dbo].[tblEmployee]
set [EmployeeNumber] = 124
where [EmployeeNumber] = 125

rollback transaction

select * 
from [dbo].[tblEmployee]