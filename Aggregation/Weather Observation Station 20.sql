-- Problem Name: Weather Observation Station 20
-- Problem Description:
-- Query the median of the Northern Latitudes (LAT_N)
-- from the STATION table and round your answer
-- to 4 decimal places.
--
-- Input Format:
-- The STATION table is described as follows:
-- Field          Type
-- ID             NUMBER
-- CITY           VARCHAR2(21)
-- STATE          VARCHAR2(2)
-- LAT_N          NUMBER
-- LONG_W         NUMBER
--
-- Solution:

SELECT ROUND(AVG(LAT_N), 4)
FROM (
    SELECT LAT_N,
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS RN,
           COUNT(*) OVER () AS CNT
    FROM STATION
) T
WHERE RN IN (FLOOR((CNT + 1) / 2), FLOOR((CNT + 2) / 2));
