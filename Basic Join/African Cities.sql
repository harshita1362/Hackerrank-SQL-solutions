-- Problem Name: African Cities
-- Problem Description:
-- Query the names of all cities where the CONTINENT is 'Africa'.
--
-- Input Format:
-- The CITY and COUNTRY tables are described as follows:
-- CITY:
-- ID
-- NAME
-- COUNTRYCODE
-- DISTRICT
-- POPULATION
--
-- COUNTRY:
-- CODE
-- NAME
-- CONTINENT
-- REGION
-- SURFACEAREA
-- INDEPYEAR
-- POPULATION
-- LIFEEXPECTANCY
-- GNP
-- GNPOLD
-- LOCALNAME
-- GOVERNMENTFORM
-- HEADOFSTATE
-- CAPITAL
-- CODE2
--
-- Solution:

SELECT CITY.NAME
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';
