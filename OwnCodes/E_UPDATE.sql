-- update employees
-- set 
-- first_name = 'Pragati',
-- last_name = 'Jha',
-- birth_date = '1998-08-31',
-- gender = 'F',
-- hire_date = '2021-10-26'
-- where 
-- emp_no = '499999';

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

-- commit;

DELETE FROM employees 
WHERE
    emp_no = '999903';

commit;


SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;


rollback;
