/* This is a Database of a certain company and it has two tables*/
/*Table 1 is the employee demographics or details*/
/* To create a table use the following code: CREATE TABLE Table_name*/
CREATE TABLE EmployeeDemo
(EmployeeId int, FirstName varchar(50), LastName varchar(50), Age int, Gender varchar(50))

/*Table 2 is the salary details of the employee*/
CREATE TABLE Salary
(EmployeeId int, JobTitle varchar(50), SalaryAmount int)