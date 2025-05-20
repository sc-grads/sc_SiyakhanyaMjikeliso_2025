select * from [dbo].[tblEmployee]
where not [EmployeeNumber] >200

select * from [dbo].[tblEmployee]
where [EmployeeNumber] !=200

 select * from [dbo].[tblEmployee]
where not ([EmployeeNumber] >= 200 and [EmployeeNumber]<= 209)

select * from [dbo].[tblEmployee]
where [EmployeeNumber] <200 or [EmployeeNumber]> 209

select * from [dbo].[tblEmployee]
where [EmployeeNumber]  between 200 and 209

select * from [dbo].[tblEmployee]
where [EmployeeNumber] not between 200 and 209

select * from tblEmployee 
where [EmployeeNumber] in (200,204,208)