use employees;

SELECT 
    *
FROM
    dept_emp;

-- visulaize the period last encompassing every employee

CREATE OR REPLACE VIEW v_dept_emp AS  -- creates a view in the db
    SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        dept_emp
    GROUP BY emp_no;
