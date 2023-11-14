-- Problem
-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

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

select distinct city
from station
where not (city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%');

select DISTINCT CITY from STATION where LEFT(CITY , 1) NOT IN ('a','e','i','o','u');