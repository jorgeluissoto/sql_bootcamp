/* String Functions: TRIM, LTRIM, RTRIM, REPLACE, SUBSTRING, UPPER, LOWER */

CREATE TABLE EmployeeErrors (
    EmployeeID VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

INSERT INTO EmployeeErrors VALUES 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired');

SELECT 
    *
FROM
    EmployeeErrors;

-- Using Trim, LTRIM, RTRIM

SELECT 
    EmployeeID, TRIM(EmployeeID)
FROM
    EmployeeErrors;

-- LTRIM 
SELECT 
    EmployeeID, LTRIM(EmployeeID)
FROM
    EmployeeErrors;

-- RTRIM
SELECT 
    EmployeeID, RTRIM(EmployeeID)
FROM
    EmployeeErrors;

-- Using Replace
SELECT 
    LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM
    EmployeeErrors;

-- Using Substring
-- Starts at first letter and goes 3 letters out 
SELECT 
    SUBSTRING(FirstName, 1, 3)
FROM
    EmployeeErrors;

-- Starts at third letter and goes 3 letters out 
SELECT 
    SUBSTRING(FirstName, 3, 3)
FROM
    EmployeeErrors;

-- fuzzy matching 
SELECT
	err.FirstName,
    SUBSTRING(err.FirstName, 1, 3),
    dem.FirstName,
    SUBSTRING(dem.FirstName, 1, 3)
FROM
    EmployeeErrors err
        JOIN
    EmployeeDemographics dem ON SUBSTRING(err.FirstName, 1, 3) = SUBSTRING(dem.FirstName, 1, 3);

-- LOWER
SELECT 
    FirstName, LOWER(FirstName)
FROM
    EmployeeErrors;
    
 -- UPPER
SELECT 
    FirstName, UPPER(FirstName)
FROM
    EmployeeErrors;
