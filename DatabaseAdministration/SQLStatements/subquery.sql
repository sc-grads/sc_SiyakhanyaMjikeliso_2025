-- HumanResource.EmployeePayHistory
--Production.Product
--Production.productInventory

select * from HumanResources.EmployeePayHistory
Where BusinessEntityID In (select BusinessEntityID from HumanResources.EmployeePayHistory where rate > 60)

select *from [dbo].[Employee]

select * from HumanResources.EmployeePayHistory
Where BusinessEntityID In (select BusinessEntityID from HumanResources.EmployeePayHistory where rate = 39.06)

select * from Production.Product
where ProductID in (select ProductID from Production.ProductInventory where Quantity>300)