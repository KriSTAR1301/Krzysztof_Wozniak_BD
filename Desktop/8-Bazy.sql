--Krzysztof Wozniak
--Zad.1
WITH  TempEmployeeInfo AS (SELECT k.FirstName, k.LastName, s.Rate
FROM Person.Person k
JOIN HumanResources.EmployeePayHistory s on k.BusinessEntityID = s.BusinessEntityID
)
 SELECT * FROM TempEmployeeInfo


--SELECT * FROM HumanResources.EmployeePayHistory
--SELECT * FROM Person.Person

--Zad.2

--SELECT * FROM SalesLT.Customer
--SELECT * FROM SalesLT.SalesOrderHeader

WITH  Przychody AS (SELECT k.CompanyName AS CompanyContact,  s.TotalDue AS Revenue
FROM SalesLT.Customer k
JOIN SalesLT.SalesOrderHeader s on k.CustomerID = s.CustomerID
)
  
SELECT * FROM Przychody 
ORDER BY CompanyContact 

--Zad.3
WITH kategorie_produktow AS( SELECT m.Name , s.OrderQty , s.UnitPrice 
FROM SalesLT.ProductCategory m
 JOIN  SalesLT.Product k ON k.ProductCategoryID = m.ProductCategoryID
 JOIN  SalesLT.SalesOrderDetail  s ON s.ProductID = k.ProductID
)

SELECT Name AS Category, SUM( OrderQty * UnitPrice)AS SalesValue FROM  kategorie_produktow
GROUP BY Name



--SELECT * FROM SalesLT.ProductCategory
--SELECT * FROM SalesLT.Product
--SELECT * FROM SalesLT.SalesOrderDetail

