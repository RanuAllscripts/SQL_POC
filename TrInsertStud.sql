/*Triggers:- 
Triggers are stored program/procedure which are automatically executed or fired when some event occurs.

Types of Triggers 
	1. DML - insert, update or delete
	2. DDL - create, alter or drop
	3. Database operation - logon, logoff, startup or shutdown

Triggers can be defined on the table, view, schema, or database with which the event is associated.

Benefits of triggers
	1. gain strong control over security
	2. Enforcing referential integrity - FK
	3. Event logging and storing information on table access
	4. Auditing
	5. Synchronous replication of table
	6. Preventing invalid transaction

Syntax:
	CREATE [OR REPLACE ] TRIGGER trigger_name   
	{BEFORE | AFTER | INSTEAD OF }   
	{INSERT [OR] | UPDATE [OR] | DELETE}   
	[OF col_name]   
	ON table_name   
	[REFERENCING OLD AS o NEW AS n]   
	[FOR EACH ROW]   
	WHEN (condition)    
	DECLARE  
	   Declaration-statements  
	BEGIN   
	   Executable-statements  
	EXCEPTION  
	   Exception-handling-statements  
	END;  

	CREATE [OR REPLACE] TRIGGER trigger_name: It creates or replaces an existing trigger with the trigger_name.
	{BEFORE | AFTER | INSTEAD OF} : This specifies when the trigger would be executed. 
									The INSTEAD OF clause is used for creating trigger on a view.
	{INSERT [OR] | UPDATE [OR] | DELETE}: This specifies the DML operation.
	[OF col_name]: This specifies the column name that would be updated.
	[ON table_name]: This specifies the name of the table associated with the trigger.
	[REFERENCING OLD AS o NEW AS n]: This allows you to refer new and old values for various DML statements, 
										like INSERT, UPDATE, and DELETE.
	[FOR EACH ROW]: This specifies a row level trigger, i.e., the trigger would be executed for each row being affected. 
					Otherwise the trigger will execute just once when the SQL statement is executed, 
					which is called a table level trigger.
	WHEN (condition): This provides a condition for rows for which the trigger would fire. 
						This clause is valid only for row level triggers.
*/

--USE StudentDB

CREATE TRIGGER TrInsertStud
ON Student
AFTER INSERT 
AS
BEGIN 
	PRINT('Record(s) inserted successfully')
End
