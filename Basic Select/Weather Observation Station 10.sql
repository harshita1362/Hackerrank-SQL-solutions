-- Problem
-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

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

select distinct city from station
where city not like '%a'
and city not like '%e'
and city not like '%i'
and city not like '%o'
and city not like '%u'

SELECT DISTINCT CITY FROM STATION WHERE RIGHT(CITY,1) NOT IN  ('a','e','i','o','u');