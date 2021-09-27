Use employees;
-- SELECT 
--     FIRST_NAME, LAST_NAME
-- FROM
--     EMPLOYEES;


-- SELECT 
--     *
-- FROM
--     employees;


-- SELECT 
--     *
-- FROM
--     employees
-- WHERE
--     first_name = 'Denis' AND gender = 'm';


-- SELECT 
--     *
-- FROM
--     employees
-- WHERE
--     first_name = 'Kellie' OR first_name = 'Aruna';
    
-- SELECT 
--     *
-- FROM
--     employees
-- WHERE
--     first_name NOT IN ('Cathie' , 'Mark', 'Nathan');

-- select *
-- from employees
-- where first_name Like ('%ar%'); -- % matches a sequence of chars, _ matches 1 character

-- select *
-- from employees
-- where emp_no Like ('1000_'); -- % matches a sequence of chars, _ matches 1 character


-- SELECT 
--     *
-- FROM
--     departments
-- WHERE
--     dept_no BETWEEN 'd003' AND 'd006';

-- SELECT 
--     *
-- FROM
--     departments
-- WHERE
--     dept_no > 'd003';


-- SELECT DISTINCT
--     hire_date
-- FROM
--     employees;


-- select count(emp_no) 
-- from employees;

-- SELECT 
--     COUNT(DISTINCT first_name)
-- FROM
--     employees;

-- select count(salary)
-- from salaries where salary >= 100000;

-- select count(*)
-- from salaries where salary >= 100000;

-- SELECT 
--     *
-- FROM
--     employees
-- ORDER BY first_name desc,last_name DESC;

-- SELECT 
--     first_name, COUNT(*)
-- FROM
--     employees
-- WHERE
--     emp_no > 1000
-- GROUP BY first_name
-- ORDER BY first_name DESC;

-- SELECT 
--     salary, COUNT(*) AS emps_with_same_salary
-- FROM
--     salaries
-- WHERE
--     salary > 80000
-- GROUP BY salary
-- ORDER BY salary;

-- select first_name , count(*) as names_count
-- from employees
-- group by first_name
-- having names_count >=200
-- order by names_count;

-- SELECT 
--     emp_no, AVG(salary) AS avg_sal
-- FROM
--     salaries
-- GROUP BY emp_no
-- HAVING avg_sal > 120000
-- ORDER BY avg_sal;

-- SELECT 
--     first_name, COUNT(*) AS name_count
-- FROM
--     employees
-- WHERE
--     hire_date > '1999-01-01'
-- GROUP BY first_name
-- HAVING name_count < 200
-- ORDER BY name_count DESC;

-- SELECT 
--     emp_no, COUNT(*) AS num_con
-- FROM
--     dept_emp
-- WHERE
--     from_date > '2000-01-01'
-- GROUP BY emp_no
-- HAVING num_con > 1;


select emp_no , sum(salary) as total_earned
from salaries

group by emp_no
having total_earned > 100000
order by total_earned desc;

















    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    