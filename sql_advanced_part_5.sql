-- Subquery in SELECT
SELECT 
    EmployeeID,
    Salary,
    (SELECT 
            AVG(Salary)
        FROM
            EmployeeSalary) AS AllAvgSalary
FROM
    EmployeeSalary;

-- How to do it with PARTITION BY
-- Return the same table as above 
SELECT 
    EmployeeID,
    Salary,
    AVG(Salary) OVER () AS AllAvgSalary
FROM
    EmployeeSalary;

-- Why GROUP BY doesn't work
-- Does not return the same results 
SELECT 
    EmployeeID,
    Salary,
    AVG(Salary)
FROM
    EmployeeSalary
GROUP BY 1,2
ORDER BY 1,2;

-- Subquery in FROM
SELECT *
FROM (SELECT 
    EmployeeID,
    Salary,
    AVG(Salary) OVER () AS AllAvgSalary
FROM
    EmployeeSalary) AS a;
    
-- Subquery in WHERE     
SELECT 
    EmployeeID, JobTitle, Salary
FROM
    EmployeeSalary
WHERE
    EmployeeID IN (SELECT 
            EmployeeID
        FROM
            EmployeeDemographics
        WHERE
            Age > 30);
