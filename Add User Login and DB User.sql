--First use the master database
USE [master]
GO

--Creating the login - replace User Name with the login name that you'd like to use
--Enter a password in the 'Password' field - it's recommended to use a strong password
--Also providing it a default database of 'master'
CREATE LOGIN [User A] WITH PASSWORD= N'123456', 
DEFAULT_DATABASE=[master]
GO

--Giving the User Name login a role of 'dbcreator', (it has the public role by default)
ALTER SERVER ROLE serveradmin ADD MEMBER [User A]
GO

--Using the database that we'd like to add the user to
USE [AdventureWorks2012]
GO

--Creating the user called 'User A' for the login 'User A'
CREATE USER [User A] FOR LOGIN [User A]
GO

--Using AdventureWorks2012 again, since the database level role needs to be properly
--mapped to the user
USE [AdventureWorks2012]
GO

--Altering the role for db_datawriter and adding the database user 'User A' so 
--the user can add, delete or modify existing data
ALTER ROLE [db_datawriter] ADD MEMBER [User A]
GO