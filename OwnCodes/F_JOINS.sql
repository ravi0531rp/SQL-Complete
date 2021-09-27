-- SET SQL_SAFE_UPDATES=0;




-- CREATE TABLE dept_dup (
--     dept_no CHAR(4) NULL,
--     dept_name VARCHAR(40) NULL
-- );

-- insert into dept_dup
-- select *
-- from departments;


-- SELECT 
--     *
-- FROM
--     dept_dup;




-- insert into dept_dup
-- (dept_no)
-- values
-- ('d010') , ('d011');


-- DELETE FROM dept_dup 
-- WHERE
--     dept_no = 'd002';

select em.emp_no , dem.dept_no 
from employees em
inner join 
dept_manager dem
on
em.emp_no = dem.emp_no
order by em.emp_no;


select * from
dept_manager;

SELECT 
    m.emp_no, d.dept_no
FROM
    dept_manager m
        INNER JOIN
    dept_dup d ON d.dept_no = m.dept_no
GROUP BY m.emp_no -- to avoid having duplicate values, group by the field that differs the most
;




SELECT 
    *
FROM
    employees e
        INNER JOIN
    dept_manager d ON e.emp_no = d.emp_no
WHERE
    e.last_name = 'Markovitch';

select *
from salaries;    

use employees;

SELECT 
    e.emp_no,
    e.first_name,
    e.hire_date,
    AVG(s.salary) AS avg_sal
FROM
    employees e
        INNER JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.hire_date > '1990-01-01'
GROUP BY e.emp_no
HAVING avg_sal > 80000
ORDER BY avg_sal;

set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', ''); -- avoid errors in group by



-- Select all managers’ first and last name, hire date, job title, start date, and department name.
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    t.from_date,
    t.to_date,
    d.dept_name
FROM
    employees e
        INNER JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        INNER JOIN
    departments d ON d.dept_no = dm.dept_no
        INNER JOIN
    titles t ON t.emp_no = e.emp_no
WHERE
    t.title = 'Manager';
    
    

-- find avg salary paid to the managers of each dept
SELECT 
    d.dept_no, d.dept_name, AVG(s.salary)
FROM
    departments d
        INNER JOIN
    dept_manager dm ON d.dept_no = dm.dept_no
        INNER JOIN
    salaries s ON s.emp_no = dm.emp_no
GROUP BY d.dept_no;



-- How many male and how many female managers do we have in the ‘employees’ database?
SELECT e.gender, COUNT(e.emp_no)
from 
employees e
inner join
dept_manager dm
on dm.emp_no = e.emp_no
group by e.gender ;



















