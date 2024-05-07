SELECT TOP (1000) [EmployeeId]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[Gender]
  FROM [Sql_tutorial].[dbo].[EmployeeDemo]
  select *
  from Salary

  /*
use Max Avg Min- Max gives the maximum number
Min gives the minmum number
Avg gives the avarage number
*/
Select MAX (SalaryAmount) 
from Salary
Select MIN (SalaryAmount) 
from Salary
Select Avg (SalaryAmount) 
from Salary
