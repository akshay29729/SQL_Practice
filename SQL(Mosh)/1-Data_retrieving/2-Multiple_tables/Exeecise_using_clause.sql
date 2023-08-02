use sql_invoicing;
select 
     c.name,
     p.date,p.amount,
     pm.name as Payment_method
from clients c
join payments p
    using (client_id)
join payment_methods pm
    on p.payment_method = pm.payment_method_id
order by p.date desc

    