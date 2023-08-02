-- find the emplyees from each office having salary more than average salary of their offices
use sql_hr;
select *
     -- avg(salary)
from employees e
where salary >( 
              select avg(salary)
              from employees
              where office_id = e.office_id)