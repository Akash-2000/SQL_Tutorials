/*
GROUP BY ,ORDER BY 

GROUP BY = IT IS SIMILAR TO DISTINCT BUT DISTINCT RETURNS THE VALUE BUT
GROUP BY GROUPS THE VALUES DEPEND ON THE CATEGORIES AVALIABLE

ORDER BY = 
*/


--SELECT  DISTINCT(Gender)
--FROM EmployeeDemographics

--SELECT Gender,COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender
 


--SELECT Gender,Age,FirstName,COUNT(Gender)
--FROM EmployeeDemographics
--where Age > 31
--GROUP BY Gender,Age,FirstName

--SELECT Gender ,COUNT(Gender) AS countgender
--FROM EmployeeDemographics
--where Age >31 
--GROUP BY Gender
--ORDER BY Gender Desc

--SELECT * |YOU CAN ORDER BY COLUMN NAME OR COLUMNS NUMBERS ALSO|
--FROM EmployeeDemographics
--ORDER BY Age 

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age ASC,1 DESC