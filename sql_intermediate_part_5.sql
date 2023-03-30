/* Updating and Deleting Data */

SELECT *
FROM EmployeeDemographics;

-- Update Holly Flax
UPDATE EmployeeDemographics 
SET 
    EmployeeID = '1012'
WHERE
    FirstName = 'Holly'
        AND LastName = 'Flax';

UPDATE EmployeeDemographics 
SET 
    Age = '31',
    Gender = 'Female'
WHERE
    FirstName = 'Holly'
        AND LastName = 'Flax';

-- DELETE: BE CAREFUL WHEN RUNNNING THIS STATEMENT
DELETE FROM EmployeeDemographics 
WHERE
    EmployeeID = 1005;

-- RUN AS A SELECT STATEMENT TO SEE WHAT YOU ARE GOING TO DELETE 
SELECT 
    *
FROM
    EmployeeDemographics
WHERE
    EmployeeID = 1005;
