-- Problem Name: Occupations
-- Problem Description:
-- Pivot the Occupation column in OCCUPATIONS so that each Name
-- is alphabetically sorted under its corresponding occupation.
-- Display columns: Doctor, Professor, Singer, Actor.

-- Solution:

SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    SELECT
        Name,
        Occupation,
        ROW_NUMBER() OVER (
            PARTITION BY Occupation
            ORDER BY Name
        ) AS rn
    FROM OCCUPATIONS
) AS t
GROUP BY rn
ORDER BY rn;
