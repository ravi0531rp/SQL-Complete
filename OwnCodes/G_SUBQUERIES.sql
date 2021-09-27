-- find names of all employees who are in dept_manager table
use employees;

SELECT 
    e.emp_no, e.first_name, e.last_name
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            d.emp_no
        FROM
            dept_manager d);

-- alt way
SELECT 
    e.emp_no, e.first_name, e.last_name
FROM
    employees e
        INNER JOIN
    dept_manager d ON d.emp_no = e.emp_no;
    
-- Extract the information about all department managers who were hired between the 1st of January 1990 and the 1st of January 1995.
SELECT 
    e.*
FROM
    employees e
        INNER JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
WHERE
    e.hire_date > '1980-01-01'
        AND e.hire_date < '1995-01-01';



SELECT 
    e.emp_no, e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            dept_manager d
        WHERE
            d.emp_no = e.emp_no);	-- exists is fast for bigger databases ; in is faster for smaller data
									-- exists tests row vals for existnce, while 'in' searches among values
                                    -- order by should be applied on the outermost query

    
-- Select the entire information for all employees whose job title is “Assistant Engineer”. 
select e.* 
from employees e
where exists
(
select * from 
titles t
where t.emp_no = e.emp_no 
and
t.title = 'Assistant Engineer'
) ;


-- sql subqueries nested in select & from

SELECT 
    sq.*
FROM
    (SELECT 
        e.emp_no, e.hire_date
    FROM
        employees e
    INNER JOIN dept_manager dm ON dm.emp_no = e.emp_no
    WHERE
        e.hire_date > '1990-01-01'
    ORDER BY e.hire_date) AS sq 
UNION SELECT 
    sq2.*
FROM
    (SELECT 
        e.emp_no, e.hire_date
    FROM
        employees e
    INNER JOIN salaries s ON s.emp_no = s.emp_no 
    where s.salary > 80000) AS sq2;
    
    
DROP TABLE IF EXISTS emp_manager;

CREATE TABLE emp_manager (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    manager_no INT(11) NOT NULL
);



    
