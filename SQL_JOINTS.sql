/*
INNER JOINTS FULL/LEFT/RIGHT OUTER JOINTS
A joint is a way to combine multiple table into a single output
joint can be done by the unique columns are common columns in both tables
*/

SELECT *
FROM SQL_Tutorial.dbo.Employeedemographics

SELECT *
FROM SQL_Tutorial.dbo.Employeesalary


SELECT *
FROM SQL_Tutorial.dbo.Employeedemographics
INNER JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeID = Employeesalary.EmoloyeeId

SELECT *
FROM SQL_Tutorial.dbo.Employeedemographics
FULL OUTER JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeID = Employeesalary.EmoloyeeId
	

SELECT *
FROM SQL_Tutorial.dbo.Employeedemographics
LEFT OUTER JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeID = Employeesalary.EmoloyeeId


SELECT *
FROM SQL_Tutorial.dbo.Employeedemographics
RIGHT OUTER JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeID = Employeesalary.EmoloyeeId


SELECT EmployeeDemographics.EmployeeId,FirstName,LastName,Age,Gender,Jobtitle,Salary
FROM SQL_Tutorial.dbo.Employeedemographics
INNER JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeID = Employeesalary.EmoloyeeId


SELECT EmployeeDemographics.EmployeeId,FirstName,LastName,Age,Gender,Jobtitle,Salary
FROM SQL_Tutorial.dbo.Employeedemographics
LEFT OUTER JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeID = Employeesalary.EmoloyeeId
	
SELECT Employeesalary.EmoloyeeId,FirstName,LastName,Age,Gender,Jobtitle,Salary
FROM SQL_Tutorial.dbo.Employeedemographics
LEFT JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeID = Employeesalary.EmoloyeeId

SELECT EmployeeDemographics.EmployeeId,FirstName,LastName,Age,Gender,Jobtitle,Salary
FROM SQL_Tutorial.dbo.Employeedemographics
RIGHT OUTER JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeID = Employeesalary.EmoloyeeId
	
	/* USECASE 1: TO FIND THE HIGHEST PAYING MEMBER IN THE SQL TABLE */
SELECT EmoloyeeId,FirstName,LastName,Salary
FROM SQL_Tutorial.dbo.Employeedemographics
INNER JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeID = Employeesalary.EmoloyeeId
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

	/* USECASE 2: TO FIND THE AVERAGE  PAYING FOR SALES MAN IN THE SQL TABLE */
SELECT Jobtitle,avg(Salary)
FROM SQL_Tutorial.dbo.Employeedemographics
INNER JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeID = Employeesalary.EmoloyeeId
WHERE Jobtitle = 'Salesman'
Group by(Jobtitle)
