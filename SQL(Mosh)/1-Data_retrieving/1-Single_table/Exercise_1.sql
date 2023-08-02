-- increase all unit prices
use sql_inventory ;
select 
     product_id,
     name,
     quantity_in_stock,
     unit_price,
     unit_price*1.1 as new_unit_price
from products
-- order by name
order by unit_price