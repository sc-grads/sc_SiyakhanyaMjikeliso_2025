

-- Subquery in Where
SELECT EmployeeID, JobTitle, Salary_Money
  FROM EmployeeSalary2
  Where EmployeeID in ( 
     Select *
	 from EmployeeDemographics)

  
