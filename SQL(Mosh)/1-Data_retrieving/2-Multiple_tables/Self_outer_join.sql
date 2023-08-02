use sql_hr;
select 
     e.employee_id,e.first_name,
     em.first_name as Manager
from employees e
left join employees em -- If we write 'right' here, it won't give output like inner join,check it
     on e.reports_to = em.employee_id
order by e.employee_id