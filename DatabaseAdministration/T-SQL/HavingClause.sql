select left([EmployeeLastName],1) as Initial, count(*) as countOfInitials
from tblEmployee
group by left([EmployeeLastName],1)
order by count(*) DESC --left([EmployeeLastName],1),

select top(5) left([EmployeeLastName],1) as Initial, count(*) as countOfInitials
from tblEmployee
group by left([EmployeeLastName],1)
order by count(*) DESC --left([EmployeeLastName],1),

select left([EmployeeLastName],1) as Initial, count(*) as countOfInitials
from tblEmployee
where [DateOFBirth] > '19860101'
group by left([EmployeeLastName],1)
having count(*)>=20
order by count(*) DESC --left([EmployeeLastName],1),