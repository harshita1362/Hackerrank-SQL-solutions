-- Problem Name: The PADS
-- Problem Description:
-- Generate two result sets:
-- 1. List all names alphabetically with the first letter
--    of their occupation in parentheses.
-- 2. Count each occupation and display the result in the
--    required format.

-- Input Format:
-- The OCCUPATIONS table contains:
-- Name: Name of the person
-- Occupation: Occupation of the person

-- Solution:

SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')')
FROM OCCUPATIONS
ORDER BY Name;

SELECT CONCAT(
    'There are a total of ',
    COUNT(*),
    ' ',
    LOWER(Occupation),
    's.'
)
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;
