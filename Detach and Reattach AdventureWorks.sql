USE master
GO

ALTER DATABASE AdventureWorks2012 SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

EXEC master.dbo.sp_detach_db @dbname = N'AdventureWorks2012', @skipchecks = 'false'
GO

CREATE DATABASE AdventureWorks2012 ON (FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\AdventureWorks2012_Data.mdf') FOR ATTACH
GO