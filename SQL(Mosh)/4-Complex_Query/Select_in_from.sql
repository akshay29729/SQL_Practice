-- using 'select' in 'from' clause to extract required info from table got from any query
-- we will use table obtained from 'select' in select query
use sql_invoicing;
select *
from(select
      client_id,
      name,
      (select sum(invoice_total)
       from invoices i
       where client_id=c.client_id) as Total_sales,
	  (select avg(invoice_total)
       from invoices) as Average,
	  (select Total_sales) - (select Average) as difference
from clients c
) as Sales_summary
where Total_sales is not null