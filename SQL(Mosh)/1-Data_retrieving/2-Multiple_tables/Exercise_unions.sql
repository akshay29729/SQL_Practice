select 
    customer_id,
    first_name,
    points,
    'Gold' as Type
from customers
where points >3000
-- order by points desc
UNION
select 
    customer_id,
    first_name,
    points,
    'Silver' as Type
from customers
where points between 2000 and 3000
-- order by points desc
UNION
select 
    customer_id,
    first_name,
    points,
    'Bronze' as Type
from customers
where customers.points <2000
order by points desc -- We have to use order by at the end
-- we can write this programme using 'Case' operator within 10 lines


