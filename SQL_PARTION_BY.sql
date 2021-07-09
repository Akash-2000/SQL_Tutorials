/*
TOPIC : PARTITION BY
OFTEN PARTION BY IS COMPARED WITH GROUP IN GROUP BY IT REDUCES THE
NUMBER OF COLUMNS AND CALUCLATE THE COUNT,AVERAGE AND ETC BUT IN
PARTITION BY DOESN'T ACTUALLY REDUCES THE NUMBER OF ROWS RETUENED
*/

SELECT *
FROM SQL_Tutorial. .Employeedemographics

SELECT *
FROM SQL_Tutorial. .Employeesalary

SELECT *
FROM SQL_Tutorial. .Employeedemographics DEMO
JOIN SQL_Tutorial. .Employeesalary SAL
ON DEMO.EmployeeId=SAL.EmoloyeeId

/* partion by dont reduce the rows of the table */
SELECT FirstName,LastName,Salary,Gender,
COUNT(Gender) over (PARTITION BY Gender) as gender_distrib
FROM SQL_Tutorial. .Employeedemographics DEMO
JOIN SQL_Tutorial. .Employeesalary SAL
ON DEMO.EmployeeId=SAL.EmoloyeeId

/* IT REDUCE THE ROWS */
SELECT Gender,
COUNT(Gender)
FROM SQL_Tutorial. .Employeedemographics DEMO
JOIN SQL_Tutorial. .Employeesalary SAL
ON DEMO.EmployeeId=SAL.EmoloyeeId
GROUP BY Gender