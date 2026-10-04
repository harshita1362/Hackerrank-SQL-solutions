-- Problem Name: Weather Observation Station 18
-- Problem Description:
-- Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.
-- a = minimum LAT_N, b = minimum LONG_W,
-- c = maximum LAT_N, d = maximum LONG_W.
-- Query the Manhattan Distance between P1 and P2
-- and round to 4 decimal places.
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
    ABS(MAX(LAT_N) - MIN(LAT_N)) +
    ABS(MAX(LONG_W) - MIN(LONG_W)),
    4
)
FROM STATION;
