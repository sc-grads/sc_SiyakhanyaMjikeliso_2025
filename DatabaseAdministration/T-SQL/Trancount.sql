update [dbo].[tblEmployee] set [EmployeeNumber] = 124 where [EmployeeNumber] = 125 
begin tran
  select @@TRANCOUNT
   begin tran
     update [dbo].[tblEmployee] set [EmployeeNumber] = 124 where [EmployeeNumber] = 125
	 commit tran
commit tran
select @@TRANCOUNT
select * from [dbo].[tblEmployee]
--update [dbo].[tblEmployee] set [EmployeeNumber] = 124 where [EmployeeNumber] = 124