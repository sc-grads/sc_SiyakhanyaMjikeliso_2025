use AdventureWorks2022;

SELECT * FROM Person.Address

SELECT AddressID, City, ModifiedDate from Person.Address

SELECT TOP 10 * FROM Person.Address

select * from Person.Address where PostalCode = '98011'

select * from Person.Address where PostalCode != '98011'

select * from Person.Address where PostalCode <> '98011'

select count(*) from Person.Address where PostalCode <> '98011'

select * from Person.Address where ModifiedDate >= '2013-11-08 00:00:00'

select * from Person.Address where ModifiedDate <= '2013-11-08 00:00:00'

Select * from Person.Person where FirstName like 'mat%'

Select * from Person.Person where FirstName like '%ew'

Select * from HumanResources.EmployeePayHistory

select max(rate) from HumanResources.EmployeePayHistory

select max(rate) AS MaxPayrate from HumanResources.EmployeePayHistory

select min(rate) AS MinPayrate from HumanResources.EmployeePayHistory

select * from Production.ProductCostHistory where StartDate = '2013-05-30 00:00:00'

select * from Production.ProductCostHistory where StartDate = '2013-05-30 00:00:00' and StandardCost >=200

select * from Production.ProductCostHistory where (StartDate = '2013-05-30 00:00:00' and StandardCost >=200) and ProductID >800

select * from Production.ProductCostHistory where ProductID in (802,803,820,900)

select * from Production.ProductCostHistory where EndDate is null

select * from Production.ProductCostHistory where EndDate is not null

--------------------------------ORder BY

select * from HumanResources.EmployeePayHistory order by rate

select * from HumanResources.EmployeePayHistory order by rate asc

select * from HumanResources.EmployeePayHistory order by rate desc

select * from HumanResources.EmployeePayHistory where ModifiedDate>= '2010-06-30 00:00:00' order by ModifiedDate desc

select * from HumanResources.EmployeePayHistory where year(ModifiedDate) >= '2014' order by ModifiedDate desc

select * from HumanResources.EmployeePayHistory where month(ModifiedDate) >= '06' order by ModifiedDate desc

-------------------- Group by
select * from Person.address where postalcode = '98011'


select count(*) from Person.address where postalcode = '98011'

select count(*),postalcode from Person.address group by PostalCode

select count(*) as NoOfAddresses,postalcode from Person.address group by PostalCode order by NoOfAddresses asc

select count(*) as NoOfAddresses,postalcode from Person.address group by PostalCode order by PostalCode

select count(*),City from Person.address group by City

select count(*)as NoOfAddresses,City,PostalCode from Person.address group by City,PostalCode

------------------------ Having Clause
select * from Production.product

select count(*) countofproduct,Color from Production.product where color = 'yellow' group by Color

select count(*) countofproduct,Color from Production.product group by Color having Color = 'yellow'


select count(*) countofproduct,Color,Size from Production.product group by Color,size having Size >= '44'


