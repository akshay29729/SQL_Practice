-- list employees with their managers
use sql_hr;
select e.employee_id,e.first_name,m.first_name as Reports_to
from employees e
left join employees m
     on e.reports_to = m.employee_id