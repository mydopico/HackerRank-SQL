-HACKERRANK - SQL

--BASIC SELECT 2

--STATION

--FIELD             TYPE
--ID                NUMBER
--CITY              VARCHAR2(21)
--STATE             VARCHAR2(2)
--LAT_N             NUMBER #northern latitude
--LONG_W            NUMBER #western longitude


--WEATHER OBSERVATION STATION 1
--Query a list of CITY and STATE from the STATION table.

SELECT CITY, STATE
FROM STATION

-- WEATHER OBSERVATION 3
-- Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.

SELECT DISTINCT CITY
FROM STATION
WHERE (ID % 2) = 0

--WEATHER OBSERVATION 4
-- Let N be the number of CITY entries in STATION, and let N' be the number of distinct CITY names in STATION; query the value of N-N' from STATION. In other words, find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.



