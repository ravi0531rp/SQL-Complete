SELECT 
    EMP_NO,
    FIRST_NAME,
    LAST_NAME,
    CASE
        WHEN GENDER = 'M' THEN 'MALE'
        ELSE 'FEMALE'
    END AS GENDER
FROM
    EMPLOYEES;
    
SELECT                  -- THIS WAY WONT ALWAYS WORK
    EMP_NO,
    FIRST_NAME,
    LAST_NAME,
    CASE GENDER
        WHEN 'M' THEN 'MALE'
        ELSE 'FEMALE'
    END AS GENDER
FROM
    EMPLOYEES;
    
 -- obtain a result set containing the employee number, first name, and last name of all employees with a number higher than 109990. 
 -- Create a fourth column in the query, indicating whether this employee is also a manager,
 -- according to the data provided in the dept_manager table, or a regular employee. 
    
    SELECT E.EMP_NO , E.FIRST_NAME , E.LAST_NAME , 
    CASE 
		WHEN DM.EMP_NO is not null THEN "mANAGER"
        ELSE "rEGULAR eMPLOYEE"
        END AS DESIGNATION
	FROM EMPLOYEES E
     left JOIN
    DEPT_MANAGER DM
    on e.emp_no = dm.emp_no;
    
    
    -- Extract a dataset containing the following information about the managers: employee number, first name, and last name. 
    -- Add two columns at the end – one showing the difference between the maximum and minimum salary of that employee, and 
    -- another one saying whether this salary raise was higher than $30,000 or NOT.
    
    select e.emp_no , e.first_name, e.last_name , max(s.salary) - min(s.salary) as sal_diff ,
    case 
    when max(s.salary) - min(s.salary) > 30000 then "Higher range"
    else "Lower Range"
    end as DiffStatus
    from employees e
    inner join dept_manager dm
    on e.emp_no = dm.emp_no
    inner join salaries s
    on s.emp_no = e.emp_no
    group by e.emp_no;
    
    
    select *
    from salaries;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    