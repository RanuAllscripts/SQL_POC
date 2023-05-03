--USE StudentDB

--To Create procedure to get student by roll
CREATE PROCEDURE GetStudentByRoll (@Roll int)
AS
BEGIN
	SELECT Roll, Name FROM Student WHERE ROLL = @ROLL
END


--Stored procedure to Alter student table whose roll number is 101
ALTER PROCEDURE GetStudentByRoll (@Roll int)
AS
BEGIN
	SELECT Roll, Name, Gender, DOB FROM Student WHERE ROLL = @ROLL
END

--To Execute
EXEC GetStudentByRoll @Roll = 101