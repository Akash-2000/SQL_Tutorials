/*
CASE STATEMENTS
*/

/* SINGLE WHEN STATEMENTS */
SELECT FirstName,LastName,Age,
CASE
	WHEN Age > 30 THEN 'OLD'
	ELSE 'YOUNG'
END
FROM SQL_Tutorial.dbo.Employeedemographics
WHERE Age IS NOT NULL
ORDER BY Age

/* MULTIPLE WHEN STATEMENTS
IF a value satisfies two conditions it returns
the first condition value 
*/
SELECT FirstName,LastName,Age,
CASE
	WHEN Age > 30 THEN 'OLD'
	WHEN Age =31 THEN 'ANGELLAAAAA'
	ELSE 'YOUNG'
END
FROM SQL_Tutorial.dbo.Employeedemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT FirstName,LastName,Age,
CASE
	WHEN Age =31 THEN 'ANGELLAAAAA'
	WHEN Age > 30 THEN 'OLD'
	ELSE 'YOUNG'
END
FROM SQL_Tutorial.dbo.Employeedemographics
WHERE Age IS NOT NULL
ORDER BY Age

/* CREATE A SALARY RAISE USING CASE STATEMENTS */

SELECT EmoloyeeId,Jobtitle,Salary,
CASE
	WHEN Jobtitle = 'Salesman' THEN Salary +(Salary *.10)
	WHEN Jobtitle = 'Accountant' THEN Salary +(Salary *.05)
	WHEN Jobtitle = 'HR' THEN Salary +(Salary *.00001)
	ELSE Salary+(Salary*0.3)
END AS SALARYRISE
FROM SQL_Tutorial.dbo.Employeedemographics
JOIN SQL_Tutorial.dbo.Employeesalary
	ON Employeedemographics.EmployeeId = Employeesalary.EmoloyeeId