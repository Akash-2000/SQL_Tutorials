
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
