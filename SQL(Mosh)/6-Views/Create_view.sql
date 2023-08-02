use sql_invoicing;
create view sales_by_client as
select 
     c.client_id,
     c.name,
     sum(i.invoice_total) as Total_sale
from clients c
join invoices i using (client_id)
group by client_id,name