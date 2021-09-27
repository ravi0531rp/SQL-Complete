use employees;

drop procedure if exists find_rich_employees ; 
delimiter $$
create procedure find_rich_employees()
begin
select *
from employees
where hire_date > '1995-01-01'
limit 1000;
end $$
delimiter ;

call find_rich_employees();

drop procedure if exists find_old_employees ; 
delimiter $$
create procedure find_old_employees(IN hire_thresh date)
begin
select *
from employees
where hire_date < hire_thresh
limit 1000;
end $$
delimiter ;

call find_old_employees('1995-01-01');


use employees;

drop procedure  if exists emp_info;
delimiter $$
create PROCEDURE emp_info(IN p_first_name varchar(255) , IN p_last_name varchar(255) , out p_emp_no integer)
begin
select emp_no
into p_emp_no
from employees
where p_first_name = first_name and p_last_name = last_name;
end $$
delimiter ;


set @v_emp_no = 0;
call emp_info('sumant' , 'peac' , @v_emp_no );
select @v_emp_no;


select *
from employees;
