--/* This is a Database of a certain company and it has two tables*/
--/*Table 1 is the employee demographics or details*/
--/* To create a table use the following code: CREATE TABLE Table_name*/
--CREATE TABLE EmployeeDemo
--(EmployeeId int, FirstName varchar(50), LastName varchar(50), Age int, Gender varchar(50))

--/*Table 2 is the salary details of the employee*/
--CREATE TABLE Salary
--(EmployeeId int, JobTitle varchar(50), SalaryAmount int)

/*Insert data into the tables*/
/*use the following command
INSERT INTO TABLE_NAME VALUES()*/
--INSERT INTO EmployeeDemo VALUES
----(1000, 'JIM','JAM' ,25, 'MALE'),
--(1001, 'Josh', 'Kim', 26, 'Male'),
--(1002, 'Jane', 'Doe', 25, 'Female'),
--(1003, 'Julius', 'Smithi', 38, 'Male'),
--(1004, 'Fidelis', 'Nochole',34, 'Female'),
--(1005, 'Fidel', 'Larry', 25, 'Male'),
--(1006, 'Anne', 'Harry', 24, 'Female'),
--(1007, 'Tinna', 'Steve', 25, 'Female'),
--(1008, 'Steve' , 'Harry', 38, 'Male'),
--(1009, 'Nicholas', 'Fidel', 26, 'Male');

/*Insert data into the second table */
INSERT INTO Salary VALUES
(1000,'Doctor', 500000),
(1001, 'Driver', 50000),
(1002, 'Chef', 100000),
(1003, 'Engineer', 200000),
(1004, 'Doctor', 500000),
(1005, 'Pilot' , 400000),
(1006, 'Manger', 500000),
(1007, 'Accountant' ,300000),
(1008, 'Banker' ,400000),
(1009, 'Doctor', 500000);




