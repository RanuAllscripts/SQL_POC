--USE StudentDB


--Views
/*

VIEW- A view is defined by a query that retrieves data from one or more tables and presents it as a single table.

Why we need view?
1. Can hide certain columns in a table. For example you may want to allow employees to see other employees' phone number column, 
	but only certain employees to be able to access an employee's salary column!
2. Views allow you to use functions and manipulate data in ways that meet your requirements. 
	For example, you store a person's birth date, but you like to calculate this to determine their age.

Disadvantages of Views
1. when table is not there view will not work.
2. it is also database object so it will occupy the space.
3. When table is dropped view becomes inactive.. it depends on the table objects.
4. Querying from view takes more time than directly querying from the table


*/



--To Create View
CREATE VIEW CreateView 
AS
	SELECT Roll, Name, Gender, DOB
	FROM Student
GO


--Alter View
ALTER VIEW CreateView 
AS
	SELECT Roll, Name, Gender
	FROM Student
GO

--UPDATE VIEW - STUDENT TABLE ALSO UPDATED 
UPDATE CreateView 
SET Name = 'Rahu'



--To Drop View
DROP VIEW studView



--SELECT Roll, Name, Gender FROM CreateView

--SELECT Roll, Name, Gender FROM Student
