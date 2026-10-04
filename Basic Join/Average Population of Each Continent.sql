-- Problem Name: Average Population of Each Continent
-- Problem Description:
-- Query the names of all continents (COUNTRY.Continent)
-- and their respective average city populations
-- (CITY.Population) rounded down to the nearest integer.
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

SELECT COUNTRY.CONTINENT,
       FLOOR(AVG(CITY.POPULATION))
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;
