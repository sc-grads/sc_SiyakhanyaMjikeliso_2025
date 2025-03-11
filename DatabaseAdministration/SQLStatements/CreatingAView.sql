use AdventureWorks2022;

SELECT TOP (100) PERCENT Person.Person.FirstName, Person.Person.Title, Person.Person.LastName, Person.PersonPhone.PhoneNumber, Person.PhoneNumberType.Name AS phoneType
FROM     Person.Person INNER JOIN
                  Person.PersonPhone ON Person.Person.BusinessEntityID = Person.PersonPhone.BusinessEntityID INNER JOIN
                  Person.PhoneNumberType ON Person.PersonPhone.PhoneNumberTypeID = Person.PhoneNumberType.PhoneNumberTypeID
WHERE  (Person.Person.Title = N'Mr.')
ORDER BY Person.Person.FirstName DESC