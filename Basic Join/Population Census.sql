-- Problem Name: Population Census
-- Problem Description:
-- Query the sum of the populations of all cities
-- where the CONTINENT is 'Asia'.
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

SELECT SUM(CITY.POPULATION)
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Asia';
