SELECT TOP (1000) [EmpID]
      ,[EmpName]
      ,[EmpTitles]
  FROM [AdventureWorks2022].[dbo].[Employee]

  
  CREATE TRIGGER EmployeeInsert
   ON dbo.Employee
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	   insert into [dbo].[EmployeeTriggerHistory] values ((select max(EmpID) from employee),'Insert')
END

select * from [dbo].[EmployeeTriggerHistory]

