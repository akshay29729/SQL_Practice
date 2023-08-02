use sql_invoicing;
select
     client_id,
     sum(invoice_total) as Total,
     count(*) as No_of_invoices
from invoices
-- where Total < 500 -- this will give syntax error
group by client_id
having Total > 500