-- calculating all invoices info as per client_id with their names also
use sql_invoicing;
select
     client_id,
     name,
     City,
     State,
     sum(invoice_total) as Total_invoice
from invoices
join clients using (client_id)
group by client_id,city,state
order by client_id desc
     