--CREATE TABLE EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

--CREATE TABLE EmployeeSalary
--(EmployeeID int,
--Jobtitle varchar(50),
--salary int)

INSERT INTO EmployeeDemographics VALUES
--(1004,'PAM','BEASLEY',30,'MALE'),
--(1005,'JIM','SHRUTE',31,'FEMALE'),
--(1006,'ANGELA','MARTIN',32,'FEMALE'),
--(1007,'TONY','FLENDRSON',32,'MALE'),
--(1008,'STANLEY','HUDSON',38,'MALE'),
(1010,'KEVLIN','MSDALONE',32,'FEMALE'),
(1011,'ALEX','ANDRESON',35,'MALE')

--INSERT INTO EmployeeSalary VALUES
--(1001,'WATCHMAN',3000),
--(1002,'FLOOR CLEANER',4000)

/*
SELECT STATEMENT
*,TOP,DISTINCT,COUNT,AS,MAX,MIN,AVG
1.*   = returns all rows and columns
2.',' = you can specify a name to call that particular columns
3.TOP = returns specific number of columns
4.DISTINCT = returns unique values
5. COUNT = Returns the non nan values
6. MAX = returns the maximum value of the column
*/

--SELECT TOP 5*  | TOP = returns specific number of columns |
--FROM EmployeeDemographics


--SELECT *   | *   = returns all rows and columns |
--FROM EmployeeDemographics


--SELECT FirstName,LastName  | ',' = you can specify a name to call that particular columns |
--FROM EmployeeDemographics

--SELECT DISTINCT(LastName) | DISTINCT = returns unique values |
--FROM EmployeeDemographics

--SELECT COUNT(LastName) AS LastNamecount | COUNT = Returns the non nan values |
--FROM EmployeeDemographics

--SELECT MAX(Salary) | MAX value of the column |
--FROM EmployeeSalary

--SELECT MIN(Salary) | MIN value of the column |
--FROM EmployeeSalary

--SELECT * | after cahange into master |
--FROM SQL_Tutorial.dbo.EmployeeSalary


/* 
WHERE STATEMENT
=,<>,<,>,And,Or,Like,Null,Not Null,In

*/

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName = 'PAM'


--SELECT * | <> NOT EQUAL TO |
--FROM EmployeeDemographics
--WHERE FirstName <> 'PAM'


--SELECT * | '>=' greater than or equal to|
--FROM EmployeeDemographics
--WHERE Age >= 30


--SELECT * | returns value which have  statisfied both condition |
--FROM EmployeeDemographics
--WHERE Age <= 32 AND Gender = 'MALE'

--SELECT * | returns value which have  statisfied either one of the condition |
--FROM EmployeeDemographics
--WHERE Age <= 32 OR Gender = 'MALE'

--SELECT * | RETURNS THE LIKEABLE VALUES FROM THE STATEMENT |
--FROM EmployeeDemographics
--WHERE LastName LIKE 'M%A%L%'

--SELECT * | in keyword is nothing but multiple '='|
--FROM EmployeeDemographics
--WHERE FirstName in ('KEVIN','TONY')

