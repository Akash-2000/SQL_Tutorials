/* 
TOPIC : HAVING CLAUSE
*/

SELECT Jobtitle,COUNT(jobtitle)
FROM SQL_Tutorial.dbo.Employeedemographics
JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeId=Employeesalary.EmoloyeeId
Group by Jobtitle	
having COUNT(jobtitle) > 1


SELECT Jobtitle,avg(Salary)
FROM SQL_Tutorial.dbo.Employeedemographics
JOIN SQL_Tutorial.dbo.Employeesalary
	ON EmployeeDemographics.EmployeeId=Employeesalary.EmoloyeeId
group by Jobtitle
having AVG(salary) >45000
order by AVG(Salary) desc	
--having COUNT(jobtitle) > 1
