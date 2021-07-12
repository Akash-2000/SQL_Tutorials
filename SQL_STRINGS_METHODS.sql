/*

TOPIC : STRING FUNCTIONS - TRIM,LTRIM,RTRIM,REPLACE,SUBSTRING,UPPER,LOWER
 
*/

CREATE TABLE EMPLOYEEerrors(
EMPLOYEEID VARCHAR(50),
FIRSTNAME VARCHAR(50),
LASTNAME VARCHAR(50)
)

INSERT INTO EMPLOYEEerrors VALUES
('1001 ','JIMBO','HALBERT'),
(' 1002','PAMELA','BEASELY'),
('1005','TOBY','FLENDERSON-FIRED')

SELECT*
FROM EMPLOYEEerrors

--using TRIM,LTRIM,RTRIM
/*
TRIM-IT CLEARS THE SPACES ON BOTH SIDES OF THE COLUMN
NOTE:SQL SERVER 2008 DO NOT HAVE THE TRIM OPTION
*/
SELECT EMPLOYEEID,RTRIM(LTRIM(EMPLOYEEID)) AS IDTRIM
FROM EMPLOYEEerrors


SELECT EMPLOYEEID,LTRIM(EMPLOYEEID) AS IDTRIM
FROM EMPLOYEEerrors

SELECT EMPLOYEEID,RTRIM(EMPLOYEEID) AS IDTRIM
FROM EMPLOYEEerrors

--USING REPLACE

SELECT LASTNAME,REPLACE(LASTNAME,'-FIRED','')AS LASTFIXED
FROM EMPLOYEEerrors

--USING SUBSTRING

SELECT EMPLOYEEerrors.FIRSTNAME,SUBSTRING(FIRSTNAME,1,3)
FROM EMPLOYEEerrors

--FUSSY MATCH
SELECT ERR.FIRSTNAME,SUBSTRING(ERR.FIRSTNAME,1,3),DEM.FirstName,SUBSTRING(DEM.FirstName,1,3)
FROM EMPLOYEEerrors AS ERR
JOIN SQL_Tutorial.dbo.Employeedemographics AS DEM
	ON SUBSTRING(ERR.FIRSTNAME,1,3)= SUBSTRING(DEM.FirstName,1,3)


--USING UPPER AND LOWER

SELECT FIRSTNAME,LOWER(FIRSTNAME)
FROM EMPLOYEEerrors


SELECT FIRSTNAME,UPPER(FIRSTNAME)
FROM EMPLOYEEerrors
