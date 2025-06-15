Update tblEmployee
Set EmployeeMiddleName = NULL
Where EmployeeMiddleName = ''


select * from [dbo].[tblEmployee]

Select Datename(month, [DateOFBirth]) as MonthNumber, count(*) as NumberEmployee, COUNT([EmployeeMiddleName]) as NumberOFMiddleNAme,
count(*) - COUNT([EmployeeMiddleName]) as NumberOFMiddleNAme,
format(min([DateOFBirth]),'dd-MM-YYYY') as EarliestDateOFBirth,

format(max([DateOFBirth]), 'D') as LatestDateOfBirth
from [dbo].[tblEmployee]
Group by datename(month, [DateOFBirth]), DATEPART(month, [DateOFBirth])
order by DATEPART(Month,[DateOFBirth])
