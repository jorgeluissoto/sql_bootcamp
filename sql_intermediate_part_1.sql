/* 
Inner Joins, Full/ Left/ Right/ Outer Joins
*/

SELECT *
FROM EmployeeDemographics;

SELECT *
FROM EmployeeSalary;

-- Inner JOIN: Returns records that have matching values in both tables
SELECT 
    *
FROM
    EmployeeDemographics ed
        INNER JOIN
    EmployeeSalary es ON ed.EmployeeID = es.EmployeeID;

-- FULL/ CROSS JOIN: Returns all records from both tables
SELECT 
    *
FROM
    EmployeeDemographics ed
        CROSS JOIN
    EmployeeSalary es ON ed.EmployeeID = es.EmployeeID;

/* LEFT JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT JOIN: Returns all records from the right table, and the matched records from the left table */

SELECT 
    ed.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM
    EmployeeDemographics ed
        INNER JOIN
    EmployeeSalary es ON ed.EmployeeID = es.EmployeeID;

-- Highest paid employee besides Michael Scott
SELECT 
    ed.EmployeeID, FirstName, LastName, Salary
FROM
    EmployeeDemographics ed
        INNER JOIN
    EmployeeSalary es ON ed.EmployeeID = es.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC;

-- Average Salary of the sales people
SELECT 
    JobTitle, (Salary) AS AverageSalaryOfSalesperson
FROM
    EmployeeDemographics ed
        INNER JOIN
    EmployeeSalary es ON ed.EmployeeID = es.EmployeeID
WHERE
    JobTitle = 'Salesman'
GROUP BY JobTitle;
