SELECT TOP (1000) [FirstName]
      ,[LastName]
      ,[dob]
      ,[ID]
      ,[Email]
  FROM [OurFirstDatabase].[dbo].[personalInfo]
   begin tran d
  update personalInfo set FirstName = 'Nwabisa' where ID =1234

  commit tran d