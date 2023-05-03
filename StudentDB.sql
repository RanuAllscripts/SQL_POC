/*
	DDL - Create, Alter, Drop, Truncate 
	DML - Insert, Select, Update, Delete 
*/

--To Create Database
CREATE DATABASE StudentDB


--To Use Database
USE StudentDB


--Create Table 
CREATE TABLE Student (Name VARCHAR(50),
					  Roll INT PRIMARY KEY,
					  Gender VARCHAR(20),
					  DOB DATE);

--Insert table in database 
INSERT INTO Student (Name, Roll, Gender, DOB) VALUES ('Ram', 2, 'Male', '2022-04-14')
INSERT INTO Student (Name, Roll, Gender, DOB) VALUES ('Shyam', 3, 'Male', '2022-04-20')
INSERT INTO Student (Name, Roll, Gender, DOB) VALUES ('Sita', 4, 'Female', '2022-05-14')
INSERT INTO Student (Name, Roll, Gender, DOB) VALUES ('Swati', 5, 'Female', '2022-06-20')


--Update the table student with student name john whose rollno is 101
UPDATE Student SET NAME = 'John' WHERE Roll = 101


--Delete the record from table with roll no. 101
DELETE FROM Student WHERE Roll = 101


--To delete all the records of students at a time 
TRUNCATE TABLE Student


--To Delete the table students with all the records 
DROP TABLE Student


--To select the roll no of a student whose name is John
SELECT Roll FROM Student WHERE Name = 'John'


--To show all the records of student
SELECT * FROM Student


--To show details of 2 student from bottom
SELECT TOP 2 * FROM Student ORDER BY Roll DESC


--The following SQL adds an "Email" column to the "Student" table:
ALTER TABLE Student
ADD Email varchar(255);


--The following SQL deletes the "Email" column from the "Student" table:
ALTER TABLE Student
DROP COLUMN Email;

--Truncate 
TRUNCATE TABLE Student


--Clustered index to fetch the records fast
CREATE CLUSTERED INDEX Roll_idx
ON Student(Roll ASC)

