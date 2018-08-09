USE AdventureWorks2012;

--Retrieving the CustomerID, how many orders they placed, and SubTotal for each
SELECT soh.CustomerID, 
       COUNT(soh.CustomerID) AS CustomerCount, 
       soh.SubTotal
FROM Sales.SalesOrderHeader soh
GROUP BY soh.CustomerID, 
         soh.SubTotal;

--Using OFFSET to retrieve the first 20 records
--Getting the next 20 consecutive rows
SELECT ProductId, 
       Name, 
       ProductNumber, 
       Color, 
       ListPrice
FROM Production.Product
ORDER BY Name, 
         ProductNumber, 
         ProductId
OFFSET 20 ROWS FETCH NEXT 20 ROWS ONLY;
