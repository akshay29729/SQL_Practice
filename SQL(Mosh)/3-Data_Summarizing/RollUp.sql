use sql_invoicing;
select 
     city,state,
     sum(invoice_total) as total
from invoices
join clients using (client_id)
group by city,state with rollup
order by total 