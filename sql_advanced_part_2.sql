/* Temp Tables */

-- Create New Temp Table 
CREATE TEMPORARY TABLE temp_Employee(
EmployeeID int,
JobTitle varchar(100),
Salary int);

SELECT 
    *
FROM
    temp_Employee;

-- Insert data
INSERT INTO temp_Employee VALUES (
'1001', 'HR', '45000' );

SELECT 
    *
FROM
    temp_Employee;

-- Insert data from one table into our temp table 
INSERT INTO temp_Employee
SELECT *
FROM EmployeeSalary;

DROP TABLE IF EXISTS temp_Employee2;
CREATE TABLE temp_Employee2 (
    JobTitle VARCHAR(50),
    EmployeesPerJob INT,
    AvgAge INT,
    AvgSalary INT
);

INSERT INTO temp_Employee2 (
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM EmployeeDemographics emp
JOIN EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle);

SELECT 
    *
FROM
    temp_Employee2;
