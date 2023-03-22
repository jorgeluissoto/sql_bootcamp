/*
SELECT Statement
,Distinct, Count, As, Max, Min, Avg
*/

SELECT 
    *
FROM
    EmployeeDemographics;

SELECT 
    FirstName, LastName
FROM
    EmployeeDemographics;

SELECT DISTINCT
    (EmployeeID)
FROM
    EmployeeDemographics;

SELECT DISTINCT
    (Gender)
FROM
    EmployeeDemographics;

SELECT 
    COUNT(LastName) AS Last_Name_Count
FROM
    EmployeeDemographics;

SELECT 
    *
FROM
    EmployeeSalary;

SELECT 
    MAX(Salary)
FROM
    EmployeeSalary;

SELECT 
    MIN(Salary)
FROM
    EmployeeSalary;

SELECT 
    AVG(Salary)
FROM
    EmployeeSalary;
