use sql_store;
 create index idx_state_points on customers(state,points);
 explain select customer_id from customers
 where state ='CA' and points >1000
-- It will automatically use first index in normal mode(without composite index)
-- next,we will drop those two separate indexes
-- drop index idx_points  on customers;