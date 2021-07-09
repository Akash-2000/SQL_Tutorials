/*
UNION,UNION ALL
 JOINTS AND UNIONS are somewhat similar it joints two tables and 
 brings to one table now whats the difference is in joint you have to choose a similar 
 column in both tables but in union we can selct all columns and put in one table
 you don't have to choose
 */
 SELECT *
 FROM SQL_Tutorial.dbo.Employeedemographics
 FULL OUTER JOIN SQL_Tutorial.dbo.Warehousedemographics
	ON Employeedemographics.EmployeeId=Warehousedemographics.EmployeeId
	
	

 SELECT *
 FROM SQL_Tutorial.dbo.Employeedemographics
 UNION
 SELECT *
 FROM SQL_Tutorial.dbo.Warehousedemographics
 
 
  SELECT *
 FROM SQL_Tutorial.dbo.Employeedemographics
 UNION ALL
 SELECT *
 FROM SQL_Tutorial.dbo.Warehousedemographics
 
 
  SELECT *
 FROM SQL_Tutorial.dbo.Employeedemographics
 UNION ALL
 SELECT *
 FROM SQL_Tutorial.dbo.Warehousedemographics
 ORDER BY EmployeeId
 
 /* DOING UNION WITH DIFFERENT SET OF COLUMNS */
 
  SELECT EmployeeId,FirstName,Age
 FROM SQL_Tutorial.dbo.Employeedemographics
 UNION
 SELECT EmoloyeeId,Jobtitle,Salary
 FROM SQL_Tutorial.dbo.Employeesalary
 ORDER BY EmployeeId