use sql_store;
select
     o.order_id,o.product_id,
	oi.product_id
from order_items o
join order_item_notes oi using (order_id,product_id)
-- check why answer is not coming without 'left' keyword