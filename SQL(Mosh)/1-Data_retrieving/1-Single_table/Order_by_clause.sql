use sql_invoicing;
select invoice_total,payment_total, invoice_total - payment_total as Due_Payment
from invoices
order by Due_Payment desc
-- limit 3
-- it gives first 3 outputs only
-- limit 6,3 -- it will leave first 6 ouputs and give 7,8,9th