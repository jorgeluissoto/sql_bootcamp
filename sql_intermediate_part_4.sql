/* HAVING Clause */

-- Cannot use aggregate function in a WHERE clause
SELECT 
    JobTitle, COUNT(JobTitle)
FROM
    EmployeeDemographics ed
        JOIN
    EmployeeSalary es ON ed.EmployeeID = es.EmployeeID
WHERE COUNT(JobTitle) > 1
GROUP BY JobTitle;

-- Use HAVING
-- Cant look at the aggregate function in HAVING before the data is grouped 
SELECT 
    JobTitle, COUNT(JobTitle)
FROM
    EmployeeDemographics ed
        JOIN
    EmployeeSalary es ON ed.EmployeeID = es.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1;

-- Avg Salary over 45000 
SELECT 
    JobTitle, AVG(Salary)
FROM
    EmployeeDemographics ed
        JOIN
    EmployeeSalary es ON ed.EmployeeID = es.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary);
