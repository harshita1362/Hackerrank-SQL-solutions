-- Problem Name: Top Earners
-- Problem Description:
-- Query the maximum total earnings for all employees as well as
-- the total number of employees who have maximum total earnings.
-- Print these values as 2 space-separated integers.
--
-- Input Format:
-- The EMPLOYEE table is described as follows:
-- Column          Type
-- employee_id     Integer
-- name            String
-- months          Integer
-- salary          Integer
--
-- Solution:
--
SELECT
    MAX(months * salary),
    COUNT(*)
FROM EMPLOYEE
WHERE months * salary = (
    SELECT MAX(months * salary)
    FROM EMPLOYEE
);
