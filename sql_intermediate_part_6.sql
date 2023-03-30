/* Aliasing */
SELECT 
    FirstName AS Fname
FROM
    EmployeeDemographics;

-- combine first and last name into one column 
SELECT 
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM
    EmployeeDemographics;

SELECT 
    AVG(Age) AS AvgAge
FROM
    EmployeeDemographics;

-- aliasing tables
SELECT 
    Demo.EmployeeID, Sal.Salary
FROM
    EmployeeDemographics AS Demo
        JOIN
    EmployeeSalary AS Sal ON Demo.EmployeeID = Sal.EmployeeID;
