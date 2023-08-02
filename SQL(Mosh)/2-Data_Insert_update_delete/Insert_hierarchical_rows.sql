insert into orders(customer_id,order_date,status)
values (5,'2020-01-01',3),
       (9,'2020-02-01',3);
insert into order_items -- (product_id,quantity,unit_price)
values (last_insert_id(),6,4,3.25),
	   (last_insert_id(),9,2,2.29) -- why it won't update order_items with order_id '14'