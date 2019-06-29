--HACKERRANK - SQL

--BASIC SELECT 3

--HIGHER THAN 75 MARKS
--Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

--STUDENTS TABLE

--COLUMN    TYPE
--ID        INTEGER
--NAME      STRING
--MARKS     INTEGER


SELECT name 
FROM students
WHERE marks > 75
ORDER BY SUBSTRING(NAME, -3), ID ASC;
