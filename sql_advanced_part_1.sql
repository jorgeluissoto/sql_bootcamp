/* CTE's (Common Table Expression) */

-- Only created in memory

WITH CTE_Employee AS
(SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION by Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION by Gender) AS AvgSalary
FROM EmployeeDemographics emp
JOIN EmployeeSalary sal
ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT 
    *
FROM
    CTE_Employee;
