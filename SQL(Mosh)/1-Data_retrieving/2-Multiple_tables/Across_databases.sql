use sql_store; -- we are using store database and bringing in the products table from inventory database
-- so whatever we are bringing from other database we should use
-- name of that database before that table like line number 6
select *
from order_items o
join sql_inventory.products p 
    on o.product_id = p.product_id 
	-- on o.product_id = sql_inventory.products.product_id -- Not giving answer,why???
order by order_id