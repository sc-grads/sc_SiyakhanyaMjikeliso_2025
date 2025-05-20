--RIGHT JOIN

Select *
from(

select E.[EmployeeNumber] as ENumber, E.[EmployeeFirstName], 
E.[EmployeeLastName], T.[EmployeeNumber] as TNumber,
sum(T.[Amount]) as TotalAmount
from [dbo].[tblEmployee] as E
right join [dbo].[tblTransaction] as T
on E.[EmployeeNumber] = T.[EmployeeNumber] 
group by E.[EmployeeNumber], T.[EmployeeNumber], E.[EmployeeFirstName], E.[EmployeeLastName]) as newTable
where ENumber is null
order by ENumber, TNumber,[EmployeeFirstName] , [EmployeeLastName]