select
     p.product_id,
     name,
    (select count(product_id)
     from order_items
     where product_id = p.product_id) as 'Ordered_times',
	 if(Ordered_times<=1,'Once','Many Times')
     -- count(*) as Orders,
--      if(count(*) >1,'Many Times','Once')
from products p
join order_items using (product_id)
group by p.product_id,name -- we used group by bcz we used 'count' function
     