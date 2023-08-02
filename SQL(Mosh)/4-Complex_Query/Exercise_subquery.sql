use sql_hr;
select -- *
    first_name,last_name,salary
from employees
where salary > ( select 
                       avg(salary) 
				from employees
                )