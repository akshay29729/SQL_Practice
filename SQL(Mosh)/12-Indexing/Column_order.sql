use sql_store;
-- create index idx_lastname_state on customers(last_name,state);
-- create index idx_state_lastname on customers(state,last_name);
explain select customer_id from customers
 -- use index (idx_lastname_state)
 -- use index (idx_state_lastname)
where state = 'CA' and last_name like 'A%';
-- where state like 'C%' and last_name like 'A%';
-- we have dropped index 'idx_lastname_state' at end of this code