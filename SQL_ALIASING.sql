/*
TOPIC :ALIASING
ALIASING IS A METHOD TO CONVERT THE TABLE NAME OR COLUMN NAME TEMPORARLY AND
ITS NOT GOING TO AFFECT THE OUTPUT 
*/

/* aliasing columns */

SELECT FirstName AS FNAME
FROM SQL_Tutorial.dbo.Employeedemographics

SELECT FirstName+' '+LastName AS FULLNAME
FROM SQL_Tutorial.dbo.Employeedemographics

SELECT AVG(AGE) AS Average_of_age
FROM SQL_Tutorial.dbo.Employeedemographics

/* aliasing tables
NOTE: do not use  alias names as a,b,c,d,etc use alias name as much as relatable
 */

SELECT DEMO.EmployeeId,sal.Salary
FROM SQL_Tutorial.dbo.Employeedemographics AS DEMO
JOIN SQL_Tutorial.dbo.Employeesalary AS sal
	on DEMO.EmployeeId=sal.EmoloyeeId
	
	