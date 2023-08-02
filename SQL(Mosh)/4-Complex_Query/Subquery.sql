use sql_store;
select name,unit_price
from products
where unit_price > (select unit_price
                    from products
					where name regexp 'lettuce'
                    -- where product_id = 3
                    )