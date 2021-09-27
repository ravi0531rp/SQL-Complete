-- https://www.hackerrank.com/challenges/revising-the-select-query/problem
SELECT *
FROM CITY
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

-- https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
SELECT NAME 
FROM CITY
WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';

-- https://www.hackerrank.com/challenges/select-all-sql/problem
SELECT * FROM CITY;

-- https://www.hackerrank.com/challenges/select-by-id/problem
SELECT *
FROM CITY
WHERE ID = 1661;

-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- https://www.hackerrank.com/challenges/japanese-cities-name/problem
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- https://www.hackerrank.com/challenges/weather-observation-station-1/problem
SELECT CITY,STATE
FROM STATION;

-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID,2) = 0;

-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem
SELECT CITY, LENGTH(CITY)
FROM
STATION
ORDER BY LENGTH(CITY) , CITY
LIMIT 1;

SELECT CITY, LENGTH(CITY)
FROM
STATION
ORDER BY LENGTH(CITY) DESC , CITY
LIMIT 1 ;

-- https://www.hackerrank.com/challenges/weather-observation-station-6/problem
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP "^[aeiou].*"; -- "^[aeiou]"

-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP "[aeiou]$";

-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP "^[aeiou].*[aeiou]$";

-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem
SELECT DISTINCT CITY
FROM STATION
WHERE NOT CITY REGEXP "^[aeiou]"; 

-- https://www.hackerrank.com/challenges/weather-observation-station-10/problem
SELECT DISTINCT CITY
FROM STATION
WHERE NOT CITY REGEXP "[aeiou]$";

-- https://www.hackerrank.com/challenges/weather-observation-station-11/problem
SELECT DISTINCT CITY
FROM STATION
WHERE NOT CITY REGEXP "^[aeiou].*[aeiou]$";

-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem
SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[^aeiou].*[^aeiou]$'; -- inner ^ is for negation

-- https://www.hackerrank.com/challenges/more-than-75-marks/problem
SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY SUBSTRING(NAME,-3) , ID;

-- https://www.hackerrank.com/challenges/name-of-employees/problem
SELECT NAME
FROM EMPLOYEE 
ORDER BY NAME;

-- https://www.hackerrank.com/challenges/salary-of-employees/problem
SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10
ORDER BY EMPLOYEE_ID;

-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem
SELECT CASE 
WHEN A+B > C AND B+C > A AND A+C > B THEN
    CASE
        WHEN A=B AND B=C THEN "Equilateral"
        WHEN A=B OR B=C OR A=C THEN "Isosceles"
        ELSE "Scalene"
    END
ELSE "Not A Triangle"
END

FROM TRIANGLES;

-- https://www.hackerrank.com/challenges/the-pads/problem
SELECT CONCAT(NAME,"(" , SUBSTRING(OCCUPATION,1,1),")")
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT("There are a total of ",COUNT(*)," ",lower(OCCUPATION),"s.")
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(*),OCCUPATION;





























































































































































