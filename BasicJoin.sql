--HACKERRANK - SQL

--BASIC JOIN

--ASIAN POPULATION
--Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

-- CITY

--Field           Type
--ID              NUMBER
--NAME            VARCHAR(17)
--COUNTRYCODE     VARCHAR(3)
--DISTRICT        VARCHAR(20)
--POPULATION      NUMBER


--COUNTRY
--Field           Type
--CODE            VARCHAR2(3)
--NAME            VARCHAR2(44)
--CONTINENT       VARCHAR2(13)
--REGION          VARCHAR2(25)
--SURFACEAREA     NUMBER
--INDEPYEAR       VARCHAR2(5)
--POPULATION      NUMBER
--LIFEEXPENTANCY  VARCHAR2(4)
--GNP             NUMBER
--GNPOLD          VARCHAR2(9)
--LOCALNAME       VARCHAR2(44)
--GOVERNMENTFORM  VARCHAR2(44)
--HEADOFSTATE     VARCHAR2(32)
--CAPITAL         VARCHAR2(4)
--CODE2           VARCHAR2(2)



SELECT SUM(ci.population)
FROM city ci
JOIN country co
ON ci.countrycode = co.code
WHERE continent = 'asia';

--AFRICAN CITIES
--Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.


SELECT ci.name
FROM city ci
JOIN country co
ON ci.countrycode = co.code
WHERE continent = 'africa';

--AVERAGE POPULATION OF EACH CONTINENT
--Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.


SELECT co.continent, FLOOR(AVG(ci.population))
FROM city ci
JOIN country co
ON ci.countrycode = co.code
GROUP BY co.continent;






