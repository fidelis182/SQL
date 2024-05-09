/*
Aliasing
SQL aliases are used to give a table, or a column in a table, a temporary name.

Aliases are often used to make column names more readable.

An alias only exists for the duration of that query.

An alias is created with the AS keyword.
*/
SELECT FirstName + '' + LastName AS FullName
FROM Sql_tutorial.dbo.EmployeeDemo

/*Partition By
*/
SELECT FirstName, LastName,Gender, SalaryAmount,
	COUNT(Gender) OVER(PARTITION BY Gender) AS TotatlGender
FROM Sql_tutorial.dbo.EmployeeDemo
JOIN Sql_tutorial.dbo.Salary
ON EmployeeDemo.EmployeeId= Salary.EmployeeId