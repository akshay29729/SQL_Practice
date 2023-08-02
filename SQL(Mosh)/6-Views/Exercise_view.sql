use sql_invoicing;
create or replace view  client_balance as
select 
     c.client_id,name,
     invoice_total,payment_total,
    sum(invoice_total - payment_total) as Balance
from clients c 
join invoices i using (client_id)
group by c.client_id,name
     