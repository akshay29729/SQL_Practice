use sql_store;
create index  idx_lastname on customers(last_name(20));
select 
       count(distinct left(last_name,1)),
       count(distinct left(last_name,5)),
       count(distinct left(last_name,10))
from customers;
-- from result '5' is optimum prefix number, so to create index for last_name
-- give prefix '5' instead of '20' 