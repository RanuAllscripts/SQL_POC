--USE StudentDB

--To Update student name by Roll number

CREATE PROCEDURE UpdateStudentName
				(@Roll INT, 
				@NewName VARCHAR(50))
AS
BEGIN
	UPDATE Student 
	SET Name = @NewName
	WHERE Roll = @Roll
END


ALTER PROCEDURE UpdateStudentName
				(@Roll INT, 
				@NewName VARCHAR(50))
AS
BEGIN
	UPDATE Student 
	SET Name = @NewName
	WHERE Roll = @Roll
END

--EXEC UpdateStudentName @Roll = 110, @NewName = 'Wiki'

SELECT ROLL, NAME FROM STUDENT