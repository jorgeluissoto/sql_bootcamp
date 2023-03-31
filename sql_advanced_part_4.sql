/* Stored Procedures */

DELIMITER //

CREATE PROCEDURE TEST()
BEGIN
SELECT *
FROM EmployeeDemographics;
END //

DELIMITER ;
 
CALL TEST;

-- Second Exmaple 
DELIMITER //

CREATE PROCEDURE Temp_Employee()
BEGIN
DROP TABLE IF EXISTS temp_Employee2;
CREATE TABLE temp_Employee2 (
    JobTitle VARCHAR(50),
    EmployeesPerJob INT,
    AvgAge INT,
    AvgSalary INT
);
END //

DELIMITER ;

INSERT INTO temp_Employee2 (
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM EmployeeDemographics emp
JOIN EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle);

CALL Temp_Employee;

SELECT 
    *
FROM
    temp_Employee2;
