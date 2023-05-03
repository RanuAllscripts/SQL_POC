CREATE DATABASE CustomerDB 

USE CustomerDB

CREATE TABLE Customer (ID INT IDENTITY(10,1) PRIMARY KEY, 
					   Name Varchar(20))

INSERT INTO Customer (Name) VALUES ('Ram')
INSERT INTO Customer (Name) VALUES ('shyam')
INSERT INTO Customer (Name) VALUES ('Rohit')
INSERT INTO Customer (Name) VALUES ('Shivam')

SELECT ID, Name FROM Customer

DELETE FROM Customer 

/*

DBCC Stands for Database Console Commands. it is set of commands that allow database admin to perfrom 
	various task like checking database consitency, repairing database corruption, monitoring database 
	performance, managing database objects.

	CHECKIDENT - to check the current identity value

	RESEED - it specify that the current identity value for the specified table should be changed to a new value.
	
*/

DBCC CHECKIDENT ('Customer', RESEED, 9); -- This will reset the identity column to start from 1.

