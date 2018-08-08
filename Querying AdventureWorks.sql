USE AdventureWorks2012;

--Retrieving the CustomerID, how many orders they placed, and SubTotal for each
SELECT soh.CustomerID, 
       COUNT(soh.CustomerID) AS CustomerCount, 
       soh.SubTotal
FROM Sales.SalesOrderHeader soh
GROUP BY soh.CustomerID, 
         soh.SubTotal;
