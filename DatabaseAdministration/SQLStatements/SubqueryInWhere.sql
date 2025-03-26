
-- Subquery in Where
SELECT EmployeeID, JobTitle, Salary_Money
  FROM EmployeeSalary2
  Where EmployeeID in ( 
     Select EmployeeID 
	 from EmployeeDemographics
	 where Age >30)
