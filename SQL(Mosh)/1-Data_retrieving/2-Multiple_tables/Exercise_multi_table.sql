use sql_store;
select order_id,p.product_id,name,quantity,o.unit_price, 
	   quantity*o.unit_price as Price,
       quantity_in_stock - quantity as 'Quantity Remaining'
from order_items o
join products p
            on p.product_id = o.product_id
order by order_id;
-- rollback; -- no use
-- closely look at the unit_prices from both tables, the product price is diffrent in both tables because order_item
-- tables unit price is
-- price when customer is placing the order, and from products table it is actual unit_price for hotel owner
-- so to get total bill never use products.unit_price 