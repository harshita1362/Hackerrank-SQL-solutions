-- Problem Name: Weather Observation Station 2
-- Problem Description:
-- Query the following two values from the STATION table:
-- 1. The sum of all values in LAT_N rounded to 2 decimal places.
-- 2. The sum of all values in LONG_W rounded to 2 decimal places.
--
-- Input Format:
-- The STATION table is described as follows:
-- Field        Type
-- ID           NUMBER
-- CITY         VARCHAR2(21)
-- STATE        VARCHAR2(2)
-- LAT_N        NUMBER
-- LONG_W       NUMBER
--
-- Solution:

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;
