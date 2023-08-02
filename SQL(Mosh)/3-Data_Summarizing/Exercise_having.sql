use sql_store;
select
     c.customer_id,
     first_name,
     last_name,
     state,
     sum(oi.quantity*oi.unit_price) as Money_Spent
from customers c
join orders  o using (customer_id)
join order_items oi
     on o.order_id = oi.order_id
-- where state = 'VA' -- use where or having for 'VA'
-- group by product_id
group by c.customer_id,
     first_name,
     last_name,
     state
having Money_spent >100  and state = 'VA'