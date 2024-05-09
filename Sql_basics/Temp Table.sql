/*
Temp Tables
There are a multitude of benefits when it comes to Temp Tables, some of the most notable are;

Data Security: Using Temp tables gives you the ability to allow all users access to a table while limiting what they can see and protecting sensitive information. (This can be done by omitting certain columns from the temp table.)
Reduced Typing: Using a Temp Table when having to continuously type out the same complex code over and over to get a result is another benefit they provide. A good example of this are complex join statements where 2 or more tables are frequently needing to be joined together. Instead of typing that join out over and over, just throw it into a temp table.
Indexing / Enhanced Performance: Temp tables have the ability to be indexed, allowing you to further optimize performance of queries that involve searching or sorting based on specific columns. This can significantly increase data retrieval speed.
Debugging Ease: When debugging or analyzing complex queries, temp tables can help break them up and store intermediate results at different stages, making the process easier to read and errors easier to identify.
To wrap up Temp tables, they are created using the familiar CREATE TABLE command with a ‘#’ preceding the table name to signify its temporary nature. Once created, they persist for the duration of the session or until explicitly dropped by the user. Unlike Common Table Expressions (CTEs), temporary tables offer extended reusability and are accessible to any user within the server while they exist. Notable benefits include enhanced data security by restricting access to sensitive information, reduced typing effort for frequently used complex queries, indexing capabilities for optimized performance, and improved debugging through the organization of complex queries into more manageable parts. Temporary tables provide a versatile solution for scenarios requiring isolated data storage and efficient data manipulation within a specific session.

*/
CREATE TABLE #temp_Employee(
EmployeeID int,
JobTitle varchar(100),
Salary int)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES 
(
1001, 'HR', 45000
);
INSERT INTO #temp_Employee
SELECT *
FROM Sql_tutorial.dbo.Salary

DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2
(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle,COUNT(JobTitle), AVG (SalaryAmount),AVG(Age)
FROM Sql_tutorial.dbo.EmployeeDemo
JOIN Sql_tutorial.dbo.Salary
	ON EmployeeDemo.EmployeeId = Salary.EmployeeId
  GROUP BY JobTitle

SELECT *
FROM #Temp_Employee2