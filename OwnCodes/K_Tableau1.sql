use employees_mod;


-- Create a visualization that provides a breakdown between the male and 
-- female employees working in the company each year, starting from 1990. 

select e.gender, YEAR(from_date) as yearDate ,count(*) as gen_count
from t_employees e
inner join
t_dept_emp as de
on e.emp_no = de.emp_no
where de.from_date	 > '1990-01-01'
group by e.gender, YEAR(de.from_date)
order by YEAR(from_date)
;




select count(distinct emp_no) , count(emp_no)
from t_dept_emp;

-- Compare the number of male managers to the number of female managers from different departments for each year, starting from 1990.

select e.gender ,YEAR(dm.from_date) as calender_year, dm.dept_no ,count(e.gender) as gen_count
from t_employees e
inner join t_dept_manager dm
on e.emp_no = dm.emp_no
group by e.gender,dm.dept_no ,calender_year
having calender_year > '1990'
order by calender_year, dm.dept_no , e.gender;

select *
from t_dept_manager;


















