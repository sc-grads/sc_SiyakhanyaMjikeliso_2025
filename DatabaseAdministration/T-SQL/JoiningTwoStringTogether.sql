declare @firstname as nvarchar(20)
declare @middlename as nvarchar(20)
declare @lastname as nvarchar(20)

set @firstname = 'John'
set @middlename = 'Jane'
set @lastname = 'Smith'


select @firstname + ' ' + iif(@middlename is null,'',' '+ @middlename) +' ' + @lastname as fullname