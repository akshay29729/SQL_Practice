use sql_store;
select 
     distinct c.customer_id,
      first_name,last_name
from customers c
join orders o using (customer_id)
join order_items  oi using (order_id)
where product_id = 3
order by c.customer_id
-- for this problem, using 'join' is more readable than using subquery
-- uing subquery
-- select 
--     distinct c.customer_id,
--    first_name,last_name
-- from customers c
-- where customer_id in( select o.customer_id
--                       from order_items
--                       join orders o using (order_id)
--                          where product_id =3
-- 					)
-- 			

                                               
                