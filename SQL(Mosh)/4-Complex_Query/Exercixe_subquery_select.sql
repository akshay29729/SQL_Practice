use sql_invoicing;
select
      client_id,
      name,
      (select sum(invoice_total)
       from invoices i
       where client_id=c.client_id) as Total_sales,
	  (select avg(invoice_total)
       from invoices) as Average,
	  (select Total_sales) - (select Average) as difference
from clients c