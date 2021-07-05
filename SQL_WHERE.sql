

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
