--USE StudentDB

/*
	Constraint 
		In SQL Server, constraints are rules or conditions applied to a table or column that define the data integrity and 
		enforce certain business rules or relationships. Constraints ensure that the data in the database remains accurate, 
		consistent, and follows predefined rules.

		There are different types of constraints in SQL Server:

		Primary Key Constraint: Ensures that a column or a set of columns uniquely identifies each row in a table. 
		It guarantees the uniqueness and non-nullability of the defined column(s).

		Foreign Key Constraint: Establishes a relationship between two tables based on the values of a column in each table. 
		It ensures referential integrity, meaning that values in the foreign key column must match the primary key values in 
		the referenced table.

		Unique Constraint: Ensures that the values in a column or a set of columns are unique, but unlike the primary key, 
		it allows NULL values.

		Check Constraint: Defines a condition that must be true for each row in a table. It restricts the values that can be 
		inserted or updated in a column based on the specified condition.

		Default Constraint: Specifies a default value for a column when no explicit value is provided during an insert operation.

		Not Null Constraint: Ensures that a column does not contain NULL values. It requires that a value must be provided 
		during an insert or update operation.

		Constraints help maintain data integrity by preventing the insertion of invalid or inconsistent data into the database. 
		They act as rules that must be followed when manipulating data, ensuring data consistency and accuracy
		has context menu
*/
--Check Constraint 
ALTER TABLE Student
ADD CONSTRAINT Check_Gender CHECK (Gender IN ('Male', 'Female'));


--Not NULL constraint 
ALTER TABLE Student 
ALTER COLUMN Gender VARCHAR(20) NOT NULL;

ALTER TABLE Student 
ALTER COLUMN Name VARCHAR(50) NOT NULL;

ALTER TABLE Student 
ALTER COLUMN DOB DATE NOT NULL;


--To drop constarint 
ALTER TABLE Student
DROP CONSTRAINT Check_Gender


--To check constraints in table student
SELECT TABLE_NAME,
       CONSTRAINT_TYPE,CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='Student';


