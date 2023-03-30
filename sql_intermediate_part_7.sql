/* Partition By */

SELECT 
    *
FROM
    EmployeeDemographics;

SELECT 
    *
FROM
    EmployeeSalary;

-- Partition BY example: Allows you to include columns you do not want in your GROUP BY statement
SELECT 
    FirstName, LastName, Gender, Salary, 
    COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM
    EmployeeDemographics dem
        JOIN
    EmployeeSalary sal ON dem.EmployeeID = sal.EmployeeID;
    
-- GROUP BY statement: This will not return the same output as a partition statement
SELECT 
    FirstName, LastName, Gender, Salary, 
    COUNT(Gender)
FROM
    EmployeeDemographics dem
        JOIN
    EmployeeSalary sal ON dem.EmployeeID = sal.EmployeeID
GROUP BY 1,2,3,4; 

-- To get the same results you need to delete the other columns
SELECT 
    Gender, 
    COUNT(Gender)
FROM
    EmployeeDemographics dem
        JOIN
    EmployeeSalary sal ON dem.EmployeeID = sal.EmployeeID
GROUP BY Gender; 
