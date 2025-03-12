SELECT TOP (1000) [EmpID]
      ,[EmpName]
      ,[SalesNumber]
      ,[ItemSold]
  FROM [AdventureWorks2022].[dbo].[Sales]

  Select * from Employee e
  join  Sales s
  on e.EmpName = s.EmpName

    Select * from Employee e
  join  Sales s
  on e.EmpID = s.EmpID

  select e.EmpID, e.EmpName,s.SalesNumber,s.ItemSold from Employee e
  join Sales s
  on e.EmpID = s.EmpID
  order by e.EmpID

  SELECT count(s.SalesNumber),e.EmpID,e.EmpName FROM [dbo].[Employee] e
join [dbo].[Sales] s 
on e.EmpID = s.[EmpID]
group by e.EmpID,e.EmpName
