-- get the orders placed in current year,code should not give orders that will ordered from future year 
use sql_store;
select *
from orders
where year(order_date) = year(now())-3