CREATE TABLE [dbo].[FunctionEmployee](
	[EmpID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Salary] [int] NULL,
	[Address] [varchar](100) NULL,

)

Select * from FunctionEmployee
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (1,'Abbas','Mehmood', 20000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (2,'Imran','Afzal', 50000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (3,'James','Dino', 90000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (4,'Jaga','Babu', 70000, 'Delhi')

Create function fnGetEmpFullName ( @FirstName varchar(50), @LastName varchar(50))
returns varchar(101)
As 
begin
return (select @FirstName +' '+ @LastName);
end

select dbo.fnGetEmpFullName (firstname,lastname) as Fullname, Salary from FunctionEmployee ---Calling a function

select firstname +' '+lastname as fullName, Salary from FunctionEmployee

create function fnGetEmployee() -- create a table that returns functionEmployee table
returns table
as 
return (select * from FunctionEmployee)

select * from fnGetEmployee() 

create function [dbo].[fnGetMulEmployee]()
returns @Emp Table
(
Empid int,
FirstName varchar(50),
Salary int
)
As
Begin
 Insert into @Emp Select e.EmpID,e.FirstName,e.Salary from FunctionEmployee e;
--Now update salary of first employee
 update @Emp set Salary=25000 where EmpID=1;
--It will update only in @Emp table not in Original Employee table
return
end 
GO
select * from fnGetMulEmployee()




