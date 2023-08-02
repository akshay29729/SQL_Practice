use sql_store;
select 
	 c.first_name as name,
	 o.order_id,o.order_date,
     sh.name as Shipper_name,
     os.name as 'Order Status'
from customers c
left join orders o  -- if we  use 'left' keyword everywhere, we will also get customers who don't place orders
    on c.customer_id = o.customer_id
left  join shippers sh
    on o.shipper_id = sh.shipper_id
left join order_statuses os -- we can use left here also,ouput won't change
    on o.status = os.order_status_id
order by order_id