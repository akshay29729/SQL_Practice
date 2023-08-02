-- Created 'size' column in 'products' which can  have 'small','medium','large' values only
use sql_store;
update products
set size = 'small'
where product_id =1