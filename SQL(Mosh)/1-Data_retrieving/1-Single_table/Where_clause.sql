use sql_inventory ;
select 
     product_id,
     name,
     quantity_in_stock,
     unit_price,
     unit_price*1.1 as new_unit_price -- This new colunmn won't get added into main database,its just in our file
from products
where unit_price <5.0 -- We can addd comparision or aritmatic conditions in where clause also
order by product_id -- ,unit_price