select * from tblEmployee
where [DateOFBirth] between '19760101' and '19861231'

select * from [dbo].[tblEmployee]
where [DateOFBirth] >= '19760101' and [DateOFBirth]< '19870101'

select * from [dbo].[tblEmployee]
where YEAR([DateOFBirth]) between 1976 and 1977 

SELECT YEAR([DateOFBirth]) as YearOfDateOfBirth, count(*) as NumberBorn
FROM [dbo].[tblEmployee]
GROUP BY year([DateOFBirth])

SELECT * FROM [dbo].[tblEmployee]
where year([DateOFBirth]) = 1967

SELECT YEAR([DateOFBirth]) as YearOfDateOfBirth, count(*) as NumberBorn
FROM [dbo].[tblEmployee]
where 1=1
GROUP BY year([DateOFBirth]) 
Order by [DateOFBirth], [EmployeeNumber] ASC

Select * from [dbo].[tblEmployee]