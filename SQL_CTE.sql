/*
TOPIC : CTE (COMMON TABLE EXPRESSION)
CTE it is used manipulate complex subqueries data it is exist only within the scope we write
and it does not stored in any place once we cancel it totaly deletes it do not create a temp file
it creates on memory

POINTS TO BE NOTED WHILE USING CTE
1. CTE is not stored anywhere so cte cannot be excute alone without the with subqueries
2. CTE only works when it is below the actually cte we created
*/

WITH CTE_EMPLOYEE AS (
SELECT Jobtitle,EmoloyeeId,LastName,Salary,Gender,
COUNT(Gender) over (PARTITION BY Gender) as gender_distrib,
AVG(Salary) over (PARTITION BY Gender) as AVg_salary
FROM SQL_Tutorial. .Employeedemographics DEMO
JOIN SQL_Tutorial. .Employeesalary SAL
	ON DEMO.EmployeeId=SAL.EmoloyeeId
where Salary > 4500
)

SELECT *
FROM CTE_EMPLOYEE