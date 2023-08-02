-- find the products that are not ordered
use sql_store;
select *
from products p
where not exists(
                 select product_id
                 from order_items
			   --  from products
               --  join order_items oi using(product_id)
               --  group by product_id
               --  having product_id= p.product_id)
                 where product_id =p.product_id)
 