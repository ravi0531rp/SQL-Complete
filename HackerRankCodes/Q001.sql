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

-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
SELECT COUNT(*) AS CNT
FROM CITY
WHERE POPULATION > 100000;

-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
SELECT SUM(POPULATION) AS POP
FROM CITY
WHERE DISTRICT = "California";

-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
SELECT AVG(POPULATION) AS POP
FROM CITY
WHERE DISTRICT = "California";

-- https://www.hackerrank.com/challenges/average-population/problem
SELECT ROUND(AVG(POPULATION)) AS POP
FROM CITY;

-- https://www.hackerrank.com/challenges/japan-population/problem
SELECT SUM(POPULATION) AS POP
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
SET @NUMBER = 21;
SELECT REPEAT('* ', @NUMBER := @NUMBER - 1) 
FROM INFORMATION_SCHEMA.TABLES;

-- https://www.hackerrank.com/challenges/draw-the-triangle-2/problem
SET @COUNTER = 0;

SELECT REPEAT('* ', @COUNTER := @COUNTER + 1)
FROM INFORMATION_SCHEMA.TABLES
WHERE @COUNTER < 20;

-- https://www.hackerrank.com/challenges/population-density-difference/problem
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;

-- https://www.hackerrank.com/challenges/the-blunder/problem
SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY,"0","")))
FROM EMPLOYEES;

-- https://www.hackerrank.com/challenges/earnings-of-employees/problem
SELECT SALARY*MONTHS , COUNT(*) 
FROM EMPLOYEE
GROUP BY SALARY*MONTHS
ORDER BY SALARY*MONTHS DESC
LIMIT 1;

-- https://www.hackerrank.com/challenges/weather-observation-station-2/problem
SELECT ROUND(SUM(LAT_N),2) , ROUND(SUM(LONG_W),2)
FROM STATION;

-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem
SELECT TRUNCATE(SUM(LAT_N),4) AS LA
FROM STATION
WHERE LAT_N >38.7880 AND LAT_N < 137.2345;

-- https://www.hackerrank.com/challenges/weather-observation-station-14/problem
SELECT TRUNCATE(MAX(LAT_N),4) AS LA
FROM STATION
WHERE LAT_N < 137.2345;

-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem
SET @ROWINDEX := -1; 
SELECT ROUND(AVG(LAT_N),4)
FROM
(SELECT @ROWINDEX:=@ROWINDEX+1 AS ROWINDEX, LAT_N 
FROM STATION
ORDER BY LAT_N) AS L 
WHERE L.ROWINDEX IN (FLOOR(@ROWINDEX/2), CEIL(@ROWINDEX/2));

-- https://www.hackerrank.com/challenges/asian-population/problem
SELECT SUM(CI.POPULATION)
FROM CITY CI
INNER JOIN
COUNTRY CO
ON CO.CODE = CI.COUNTRYCODE
WHERE CO.CONTINENT = 'Asia';

-- https://www.hackerrank.com/challenges/african-cities/problem
SELECT CI.NAME
FROM CITY CI
INNER JOIN
COUNTRY CO
ON CO.CODE = CI.COUNTRYCODE
WHERE CO.CONTINENT = 'Africa';

-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
SELECT CO.CONTINENT , FLOOR(AVG(CI.POPULATION))
FROM COUNTRY CO
INNER JOIN
CITY CI
ON
CI.COUNTRYCODE = CO.CODE
GROUP BY CO.CONTINENT;

-- https://www.hackerrank.com/challenges/the-report/problem
SELECT IF(GRADE >= 8, NAME, NULL), GRADE, MARKS
FROM STUDENTS JOIN GRADES
WHERE MARKS BETWEEN MIN_MARK AND MAX_MARK
ORDER BY GRADE DESC, NAME;

-- https://www.hackerrank.com/challenges/full-score/problem
SELECT HACKERS.HACKER_ID , HACKERS.NAME
FROM SUBMISSIONS 
INNER JOIN 
CHALLENGES
ON SUBMISSIONS.CHALLENGE_ID = CHALLENGES.CHALLENGE_ID
INNER JOIN DIFFICULTY
ON
CHALLENGES.DIFFICULTY_LEVEL = DIFFICULTY.DIFFICULTY_LEVEL
INNER JOIN 
HACKERS
ON
HACKERS.HACKER_ID = SUBMISSIONS.HACKER_ID
WHERE SUBMISSIONS.SCORE = DIFFICULTY.SCORE AND CHALLENGES.DIFFICULTY_LEVEL = DIFFICULTY.DIFFICULTY_LEVEL

GROUP BY HACKERS.HACKER_ID , HACKERS.NAME
HAVING COUNT(SUBMISSIONS.HACKER_ID) > 1
ORDER BY COUNT(SUBMISSIONS.HACKER_ID) DESC , HACKERS.HACKER_ID;

-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem























































































































































