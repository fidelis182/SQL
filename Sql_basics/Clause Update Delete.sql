/*
Having Clause
*/
SELECT JobTitle, AVG(SalaryAmount)
FROM Sql_tutorial.dbo.EmployeeDemo
 JOIN Sql_tutorial.dbo.Salary
	ON EmployeeDemo.EmployeeId = Salary.EmployeeId
GROUP BY JobTitle
HAVING AVG(SalaryAmount) >300000
ORDER BY AVG(SalaryAmount)

/*
Updating/DeletingDate
keyword SET is used to select a specific column
*/
SELECT * 
FROM Sql_tutorial.dbo.WareHouseEmployeeDEmo
UPDATE Sql_tutorial.dbo.WareHouseEmployeeDEmo
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Jim' AND Lastname = 'Ndinu'

/*Delete*/
SELECT * 
FROM Sql_tutorial.dbo.WareHouseEmployeeDEmo
DELETE FROM Sql_tutorial.dbo.WareHouseEmployeeDEmo
WHERE EmployeeID= 1000




