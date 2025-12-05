--Question 1
SELECT * FROM HumanResources.Employee

ORDER BY JobTitle;
----------------------------------------------
--Question 2
SELECT * FROM HumanResources.Employee AS e

JOIN Person.Person as p on e.BusinessEntityID = p.BusinessEntityID

ORDER BY LastName;
----------------------------------------------
--Question 3
SELECT FirstName, LastName, businessentityid AS employee_id FROM Person.Person

ORDER BY LastName;
-----------------------------------------------
--Question 4
SELECT productid, productnumber, name FROM Production.Product

WHERE SellStartDate IS NOT NULL  AND ProductLine = 'T'

ORDER BY name;
--------------------------------------------------
--Question 5
SELECT SalesOrderID,CustomerID,OrderDate,SubTotal, (TaxAmt/SubTotal)*100 AS tax_percent

FROM Sales.SalesOrderHeader

ORDER BY SubTotal asc;
--------------------------------------------------
--Question 6
SELECT DISTINCT(JobTitle) FROM HumanResources.Employee

ORDER BY JobTitle;
----------------------------------------------
--Question 7
SELECT CustomerID, sum(freight) AS total_freight FROM Sales.SalesOrderHeader

GROUP BY CustomerID

ORDER BY CustomerID;
---------------------------------------------
--Question 8
SELECT CustomerID, SalesPersonID,AVG(subtotal) AS avg_subtotal, SUM(subtotal) AS sum_subtotal

FROM Sales.SalesOrderHeader

GROUP BY CustomerID, SalesPersonID

ORDER BY CustomerID desc;
---------------------------------------------------------------------------------
--Question 9
SELECT ProductID, SUM(Quantity) AS total_quantity

FROM Production.ProductInventory

WHERE Shelf IN ('A', 'C','H')

GROUP BY ProductID

HAVING sum(Quantity) >500

ORDER BY ProductID;
----------------------------------------------------------------------------------
--Question 10
SELECT SUM(Quantity)*10 AS total_quantity

FROM Production.ProductInventory

GROUP BY LocationID
----------------------------------------------------------------------------------
--Question 11
SELECT per.BusinessEntityID,FirstName,LastName,phoneNumber AS person_phone 
FROM Person.Person AS per
JOIN Person.PersonPhone AS p ON per.BusinessEntityID = p.BusinessEntityID
WHERE LastName LIKE 'L%'
ORDER BY LastName ASC, FirstName ASC;
---------------------------------------------------------------------------------
--Question 12
SELECT salespersonID, customerID, SUM(Subtotal) AS sum_subtotal
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL
GROUP BY ROLLUP (SalesPersonID, CustomerID);
--------------------------------------------------------------------------------
--Question 13
SELECT COALESCE(CAST(LocationID AS VARCHAR), '') AS LocationID, COALESCE(Shelf, '') AS Shelf, SUM(Quantity) as totalquantity
FROM Production.ProductInventory
GROUP BY ROLLUP( LocationID,Shelf)
ORDER BY LocationID,Shelf ;
-------------------------------------------------------------------------------
--Question 14
SELECT COALESCE(CAST(LocationID AS VARCHAR), '') AS LocationID, COALESCE(Shelf, '') AS Shelf,SUM(Quantity) AS TotalQuantity
FROM Production.ProductInventory
GROUP BY ROLLUP(LocationID, Shelf)
ORDER BY  LocationID, Shelf;
---------------------------------------------------------------------------------
--Question 15
SELECT LocationID, Sum(Quantity) AS TotalQuantity
FROM Production.ProductInventory
GROUP BY ROLLUP (LocationID)
ORDER BY  LocationID;
----------------------------------------------------------------------------------
--Question 16 
SELECT city, count(*)AS NoOFEmployees
FROM Person.Address AS p
GROUP BY city
ORDER BY  city ASC;
---------------------------------------------------------------------------------
--Question 17
SELECT year(OrderDate), SUM(TotalDue) as OrderAmount
FROM Sales.SalesOrderHeader
GROUP BY year(OrderDate)
ORDER BY year(OrderDate);
--------------------------------------------------------------------------------
--Question 18
SELECT year(OrderDate), SUM(TotalDue) as OrderAmount
FROM Sales.SalesOrderHeader
WHERE year(OrderDate)<= 2016
GROUP BY year(OrderDate)
ORDER BY year(OrderDate);
--------------------------------------------------------------------------------
--Question 19
SELECT ContactTypeID, name 
FROM Person.ContactType
WHERE name like '%Manager%'
ORDER BY ContactTypeID DESC;
--------------------------------------------------------------------------------
--Question 20
SELECT p.BusinessEntityID,p.FirstName,p.LastName
FROM Person.Person as p
INNER JOIN Person.BusinessEntityContact AS e
ON p.BusinessEntityID = e.PersonID
INNER JOIN Person.ContactType AS C 
ON e.ContactTypeID = C.ContactTypeID
WHERE Name = 'Purchasing Manager'
ORDER BY LastName,FirstName;
---------------------------------------------------------------------------------------
--Question 21





---------------------------------------------------------------------------------------
--Question 22
SELECT p.ContactTypeID, name, count(*) as nocontact
FROM person.ContactType AS p
INNER JOIN Person.BusinessEntityContact AS b
ON p.ContactTypeID =b.ContactTypeID
GROUP BY p.ContactTypeID,Name
HAVING count(*)>=100
ORDER BY nocontact desc;
---------------------------------------------------------------------------------------
--Question 23
SELECT 
    ph.RateChangeDate,
    CONCAT(p.FirstName, ' ', COALESCE(p.MiddleName + ' ', ''), p.LastName) AS NameInFull,
    ph.Rate * 40 AS WeeklySalary
FROM HumanResources.EmployeePayHistory AS ph
INNER JOIN Person.Person AS p 
    ON ph.BusinessEntityID = p.BusinessEntityID
WHERE ph.RateChangeDate = (
    SELECT MAX(RateChangeDate) 
    FROM HumanResources.EmployeePayHistory ph2 
    WHERE ph2.BusinessEntityID = ph.BusinessEntityID
)
ORDER BY NameInFull ASC;
----------------------------------------------------------------------------------------
--Question 24
SELECT 
    CONVERT(varchar(10), ph.RateChangeDate, 126) AS fromdate,   
    p.FirstName + 
        ISNULL(' ' + p.MiddleName, '') + ' ' + p.LastName AS nameinfull,
    Rate * 40 AS salaryinaweek
FROM HumanResources.EmployeePayHistory ph
INNER JOIN Person.Person p ON ph.BusinessEntityID = p.BusinessEntityID
INNER JOIN (
    SELECT BusinessEntityID, 
           MAX(RateChangeDate) AS LatestDate
    FROM HumanResources.EmployeePayHistory
    GROUP BY BusinessEntityID
) latest ON ph.BusinessEntityID = latest.BusinessEntityID 
        AND ph.RateChangeDate = latest.LatestDate
ORDER BY nameinfull;
---------------------------------------------------------------------------------------
--Question 25
SELECT 
    SalesOrderID,
    ProductID,
    OrderQty,
    SUM(OrderQty) OVER () AS SumOrderQty,
    AVG(OrderQty * 1.0) OVER () AS AvgOrderQty,
    COUNT(*) OVER () AS CountRows,
    MAX(OrderQty) OVER () AS MaxOrderQty,
    MIN(OrderQty) OVER () AS MinOrderQty
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (43659, 43664)
ORDER BY SalesOrderID, ProductID;


