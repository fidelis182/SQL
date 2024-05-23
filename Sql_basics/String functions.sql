SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
  FROM [Sql_tutorial].[dbo].[EmployeeErrors]
/*
String functions: TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower
*/
DROP TABLE  EmployeeErrors;
CREATE TABLE EmployeeErrors(
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar (50)
)

INSERT INTO EmployeeErrors VALUES
('1001', 'Jimbo', 'Halbert'),
('1002', 'Pam', 'Bae'),
('1005', 'Tom', 'Fred'),
('  1006', 'JAne', 'Jay-Barnert'),
('1005', 'Tom', 'Fred - drick');


--Using Trim, LeftTrim(LTRIM), RightTrim(RTRIM)
SELECT*
FROM EmployeeErrors err
SELECT EmployeeID,TRIM (EmployeeID) AS Trim_column
FROM EmployeeErrors err
SELECT EmployeeID,LTRIM (EmployeeID) AS Left_trim_column
FROM EmployeeErrors err
SELECT EmployeeID,RTRIM (EmployeeID) AS Right_trim_column
FROM EmployeeErrors err

--Using Replace
SELECT*
FROM EmployeeErrors err
SELECT LastName, REPLACE(Lastname,'- drick', '')
FROM EmployeeErrors err
SELECT LastName, REPLACE(Lastname,'-Barnert', '')
FROM EmployeeErrors err

--Using SUBSTRING

SELECT SUBSTRING(Firstname, 3,3)
FROM EmployeeErrors err

--Using UPPER & LOWER

SELECT Firstname,LOWER(FirstName)
FROM EmployeeErrors err

SELECT Firstname,UPPER(FirstName)
FROM EmployeeErrors err
