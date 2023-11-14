-- Problem
-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

-- STATION

-- Field	Type
-- ID	NUMBER
-- CITY	VARCHAR2(21)
-- STATE	VARCHAR2(2)
-- LAT_N	NUMBER
-- LONG_W	NUMBER
-- where LAT_N is the northern latitude and LONG_W is the western longitude.

select DISTINCT CITY from STATION where LEFT(CITY , 1) NOT IN ('a','e','i','o','u') || RIGHT(CITY , 1) NOT IN ('a','e','i','o','u');

select distinct city
from station 
where not (city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or  city like 'U%') or not (city like '%a' or city like '%e' or city like '%i' or city like '%o' or  city like '%u');
