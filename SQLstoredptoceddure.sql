/*
TOPIC: STORED PROCEDURES
	store procedures is a group of SQL statement stored in a database
a stored procedure can accept the input parameter it reduce the traffic
*/

--CREATE A SIMPLR STORE PROCEDURE

CREATE PROCEDURE TEST
AS
SELECT *
FROM EmployeeDemographics


EXEC TEST

CREATE PROCEDURE EMPLOYEE3
AS
CREATE TABLE #TEMP_EMPLOYEE3(
JOBTITLE varchar(50),
EMPLOYEperjob INT,
AVGAGE INT,
AVGSALARY INT
)

INSERT INTO #TEMP_EMPLOYEE3
SELECT Jobtitle,COUNT(Jobtitle),AVG(age),avg(Salary)
FROM SQL_Tutorial. .Employeedemographics DEMO
JOIN SQL_Tutorial. .Employeesalary SAL
	ON DEMO.EmployeeId=SAL.EmoloyeeId
group by Jobtitle
SELECT *
FROM #TEMP_EMPLOYEE3

EXEC EMPLOYEE3 @JOBTITLE='SALESMAN'
