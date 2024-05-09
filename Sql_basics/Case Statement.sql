/*
Case Statement
*/
SELECT *
FROM Sql_tutorial.dbo.EmployeeDemo

SELECT FirstName, LastName,Age,
    CASE
        WHEN Age > 30 THEN 'Old'
        ELSE 'Young'
    END AS AgeCategory
FROM Sql_tutorial.dbo.EmployeeDemo;

SELECT FirstName, LastName,JobTitle, SalaryAmount,
 CASE
     WHEN JobTitle = 'Doctor' THEN SalaryAmount + (SalaryAmount * .50)
	 WHEN JobTitle = 'Driver' THEN SalaryAmount + (SalaryAmount * .10)
	 WHEN JobTitle = 'Chef' THEN SalaryAmount + (SalaryAmount * .20)
	 WHEN JobTitle = 'Engineer' THEN SalaryAmount + (SalaryAmount * .30)
	 --WHEN JobTitle = 'Pilot' THEN SalaryAmount + (SalaryAmount * .40)
	 --WHEN JobTitle = 'Banker' THEN SalaryAmount + (SalaryAmount * .25)
	 --WHEN JobTitle = 'Manager' THEN SalaryAmount + (SalaryAmount * .40)
	 --WHEN JobTitle = 'Accountant' THEN SalaryAmount + (SalaryAmount * .10)
	 ELSE SalaryAmount + (SalaryAmount * .05)
END AS SalaryAfterRaise
FROM Sql_tutorial.dbo.EmployeeDemo
JOIN Sql_tutorial.dbo.Salary
 ON EmployeeDemo.EmployeeId = Salary.EmployeeId
