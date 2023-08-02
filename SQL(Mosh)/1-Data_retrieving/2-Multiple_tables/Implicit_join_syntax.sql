use sql_store;
select *
from orders o,customers c
where o.customer_id = c.customer_id
-- if we forget 'where' term, we will get cross output