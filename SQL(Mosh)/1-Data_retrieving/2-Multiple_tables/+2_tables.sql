use sql_invoicing;
select c.client_id,c.name,
       p.invoice_id,p.amount,p.date,
       pm.name as Payment_method
     
from clients c
join payments p
	 on c.client_id = p.client_id -- using(client_id)
join payment_methods pm
     on p.payment_method = pm.payment_method_id
order by c.client_id
-- if we use  'left' join alone for any join here,it will give same answer
-- if we use 'left' join at both joins,it will give other answer