/* WHERE statement
= , <> , < , > , AND, OR, LIKE, NULL, NOT NULL, INSERT
*/

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim';

-- DOES NOT EQUAL 
SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim';

-- Returns 6 rows 
SELECT *
FROM EmployeeDemographics
WHERE AGE > 30;

-- Returns   8 rows
SELECT *
FROM EmployeeDemographics
WHERE AGE >= 30;

-- Returns 5 rows
SELECT *
FROM EmployeeDemographics
WHERE AGE < 32;

-- Returns 7 rows
SELECT *
FROM EmployeeDemographics
WHERE AGE <= 32;

-- AND returns 4 rows 
SELECT *
FROM EmployeeDemographics
WHERE AGE <= 32 AND Gender = 'Male';

-- AND returns 9 rows 
SELECT *
FROM EmployeeDemographics
WHERE AGE <= 32 OR Gender = 'Male';

-- Starts with an 'S' 
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%';

-- 'S' and 'o' anywhere 
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%';

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL;

-- Nothing will return but this is how we check for NULL values 
SELECT *
FROM EmployeeDemographics
WHERE FirstName is NULL;

-- shorthand for equal multiple items
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael');
