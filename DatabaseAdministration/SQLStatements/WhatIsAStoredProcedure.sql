--CREATE PROCEDURE SelectAllPersonAddress
--AS
--select * from Person.Address
--go;


--select * from Person.Address

--exec SelectAllPersonAddress   --Execute stored procedure

--drop procedure SelectAllPersonAddress

CREATE PROCEDURE SelectAllPersonAddressWithEncryption (@City VARCHAR(30) )

AS
--Begin
set nocount on -- Not show the number of rows

select * from Person.Address where City= @City;
--end

exec SelectAllPersonAddress @City = 'New York'

exec SelectAllPersonAddress 'Miami'

