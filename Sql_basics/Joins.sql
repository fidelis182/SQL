SELECT *
FROM Sql_tutorial.dbo.EmployeeDemo

SELECT *
FROM Sql_tutorial.dbo.Salary

/*Inner Join
that selects records that have matching values in both tables:
LEFT JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
CROSS JOIN: Returns all records from both tables
*/
SELECT EmployeeDemo.EmployeeId, FirstName,LastName, JobTitle,SalaryAmount
FROM Sql_tutorial.dbo.EmployeeDemo
Inner Join Sql_tutorial.dbo.Salary
  ON EmployeeDemo.EmployeeId = Salary.EmployeeId
  WHERE FirstName <> 'Tinna'
  ORDER BY SalaryAmount DESC


SELECT JobTitle, AVG (SalaryAmount)
FROM Sql_tutorial.dbo.EmployeeDemo
Inner Join Sql_tutorial.dbo.Salary
  ON EmployeeDemo.EmployeeId = Salary.EmployeeId
  WHERE JobTitle =  'Doctor'
  GROUP BY JobTitle


