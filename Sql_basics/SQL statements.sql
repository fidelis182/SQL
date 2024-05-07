SELECT TOP (1000) [EmployeeId]
      ,[JobTitle]
      ,[SalaryAmount]
  FROM [Sql_tutorial].[dbo].[Salary]
/*
SELECT STATEMENT
Top, Distinct, Count, As, Max,Min,Avg
*/
/*
Select all data from a table use the following command
*/
SELECT *
FROM dbo.EmployeeDemo

SELECT *
FROM dbo.Salary

/*
Use Top
*/
SELECT Top 5 *
FROM dbo.EmployeeDemo
/*
use Distinct- this means you are selecting a specific column
*/
SELECT Distinct (EmployeeId)
FROM dbo.EmployeeDemo

/*
use Count- Give the number of items maybe
You can you AS to give it a column name
*/
SELECT Count (EmployeeId) AS CountEmployeeId
FROM dbo.EmployeeDemo


