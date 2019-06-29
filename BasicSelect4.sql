--HACKERRANK - SQL

--BASIC SELECT 4

--Employee Names

--Employee table

--column                type
--employee_id           integer
--name                  string
--months                integer
--salary                integer

--Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

SELECT name 
FROM employee
ORDER BY NAME ASC

--Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater $2000 than per month who have been employees for less than 10 months. Sort your result by ascending employee_id.

SELECT name
FROM employee
WHERE salary > 2000
AND months < 10
ORDER BY employee_id


