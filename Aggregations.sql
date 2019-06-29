--HACKERRANK - SQL

--AGGREGATIONS 

--THE COUNT FUNCTION
--Query a count of the number of cities in CITY having a Population larger than 100000. 

-- CITY

--Field           Type
--ID              NUMBER
--NAME            VARCHAR(17)
--COUNTRYCODE     VARCHAR(3)
--DISTRICT        VARCHAR(20)
--POPULATION      NUMBER

SELECT COUNT(name)
FROM CITY
WHERE population > 100000;

--THE SUM FUNCTION
--Query the total population of all cities in CITY where District is California. 

SELECT SUM(population)
FROM CITY
WHERE district = 'California';

--AVERAGES
--Query the average population of all cities in CITY where District is California. 

SELECT AVG(population)
FROM CITY
WHERE district = 'California';

--AVERAGE POPULATION
--Query the average population for all cities in CITY, rounded down to the nearest integer.

-- The ROUND() function rounds a number to a specified number of decimal places.  SELECT ROUND(135.324, 2) 2 DECIMAL PLACES
--FLOOR() Return the largest integer value that is less than or equal to 25.75, CEIL(), CEILING(), and TRUNCATE() functions.

SELECT ROUND(AVG(population),0)
FROM CITY;

--JAPAN POPULATION
--Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN

SELECT SUM(population)
FROM CITY
WHERE countrycode = 'JPN';

--POPULATION DENSITY DIFFERENCE
--Query the difference between the maximum and minimum populations in CITY.

SELECT MAX(population) - MIN(population) AS PDF
FROM CITY;


--THE BLUNDER
--Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's 0 key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.
--Write a query calculating the amount of error (i.e.:actual-miscalculated average monthly salaries), and round it up to the next integer.

--EMPLOYEES table

--Column            Type
--ID                Integer
--Name              String
--Salary            Integer
--Note: Salary is measured in dollars per month and its value is <10^5.

--actual salary

SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0',''))) 
FROM EMPLOYEES;

--TOP EARNERS
--We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.

--EMPLOYEE table

--Column               Type
--employee_id          integer
--name                 string
--months               integer
--salary               integer

SELECT salary * months AS earnings, count(*)
FROM employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1; 

--WEATHER OBSERVATION STATION 2
--Query the following two values from the STATION table:
--The sum of all values in LAT_N rounded to a scale of 2 decimal places.
--The sum of all values in LONG_W rounded to a scale of 2 decimal places.

--STATION table

--Field        Type
--ID           Number
--City         Varchar2(21)
--State        Varchar2(2)
--Lat_N        Number
--Long_W       Number

SELECT ROUND(SUM(Lat_N),2), ROUND(SUM(Long_W),2)
FROM station;

--WEATHER OBSERVATION STATION 13
--Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.

SELECT ROUND(SUM(Lat_N),4)
FROM station
WHERE Lat_N BETWEEN 38.7880 AND 137.2345;

--WEATHER OBSERVATION STATION 14
--Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.


SELECT ROUND(MAX(Lat_N),4)
FROM station
WHERE Lat_N < 137.2345;

--WEATHER OBSERVATION STATION 15
--Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;

--WEATHER OBSERVATION STATION 16
--Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.

SELECT ROUND(MIN(Lat_N),4)
FROM station
WHERE Lat_N > 38.7780;


--WEATHER OBSERVATION STATION 16
--Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.

SELECT ROUND(LONG_W,4)
FROM station
WHERE Lat_N > 38.7780
ORDER BY LAT_N 
LIMIT 1;







