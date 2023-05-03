--USE StudentDB


--Stored Procedure
/*
A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.

Why we need stored procedure ?

1. To reuse the code
2. Encapsulates complex logic
3. Easy to maintain the code
*/

CREATE PROCEDURE CreateStudent
AS
BEGIN
IF (SELECT COUNT(*) FROM Student) = 0
	BEGIN
		INSERT INTO Student (Name, Roll, Gender, DOB) VALUES ('Ram', 100, 'Male', '2022-04-14')
		INSERT INTO Student (Name, Roll, Gender, DOB) VALUES ('Shyam', 101, 'Male', '2022-04-20')
		INSERT INTO Student (Name, Roll, Gender, DOB) VALUES ('Sita', 102, 'Female', '2022-05-14')
		INSERT INTO Student (Name, Roll, Gender, DOB) VALUES ('Swati', 103, 'Female', '2022-06-20')
	END
END

-- To execute
--EXEC CreateStudent
