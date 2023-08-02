use sql_store;
select 
      p.product_id,p.name,
      oi.quantity
from products p
left join order_items oi
    on p.product_id = oi.product_id
-- left will give result with product_id-7 with 'null' quantity