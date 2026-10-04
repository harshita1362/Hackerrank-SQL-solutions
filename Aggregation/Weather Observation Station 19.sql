-- Problem Name: Weather Observation Station 19
-- Problem Description:
-- Consider P1(a,c) and P2(b,d) to be two points on a 2D plane.
-- (a,b) are the minimum and maximum values of LAT_N.
-- (c,d) are the minimum and maximum values of LONG_W.
-- Query the Euclidean Distance between P1 and P2
-- and format your answer to display 4 decimal digits.
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

SELECT ROUND(
    SQRT(
        POWER(MAX(LAT_N) - MIN(LAT_N), 2) +
        POWER(MAX(LONG_W) - MIN(LONG_W), 2)
    ),
    4
)
FROM STATION;
