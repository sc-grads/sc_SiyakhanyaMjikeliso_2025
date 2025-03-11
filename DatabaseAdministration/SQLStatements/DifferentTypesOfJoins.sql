

Select * from Student

Select *from Course

Select * from Student s
inner Join Course c
on s.RollNo = c.RollNo

select s.RollNo,s.StudentName,c.CourseID from [dbo].[Student] s
inner join [dbo].[Course] c 
on s.RollNo = c.RollNO

select s.RollNo,s.StudentName,c.CourseID from [dbo].[Student] s
left join [dbo].[Course] c 
on s.RollNo = c.RollNO

select s.RollNo,s.StudentName,c.CourseID from [dbo].[Student] s
right join [dbo].[Course] c 
on s.RollNo = c.RollNO

select s.RollNo,s.StudentName,c.CourseID from [dbo].[Student] s
full join [dbo].[Course] c 
on s.RollNo = c.RollNO