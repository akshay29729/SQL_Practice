use sql_invoicing;
select 
     name as Name,
     sum(amount) as total
from payments p
join payment_methods pm
	on pm.payment_method_id = p.payment_method
-- group by Name with rollup -- if we don't use 'group by' clause, we will get total payments but 
                          -- in name column only  'credit card', why???
-- group by name with rollup