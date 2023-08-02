 use sql_store;
-- create table orders_archived
-- select * from orders
-- above we created copy of orders table in orders_archived table
-- we have cleared info from copied table using 'truncate' and we will insert selected info in it
 insert into orders_archived
 select *
 from orders
 where order_date < '2019-01-01'
-- order by order_date
-- we inserted selected info with date order
