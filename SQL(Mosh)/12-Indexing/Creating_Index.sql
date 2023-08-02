use sql_store;
 -- explain select customer_id from customers where state ='CA'
create index idx_state on customers(state);
explain select customer_id from customers where state ='CA'