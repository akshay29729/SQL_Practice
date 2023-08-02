 -- Recreate  invoices table with extra Balance column
 use sql_invoicing;
 create or replace view Invoices_with_balance as 
 select 
      invoice_id,client_id,number,
      invoice_total,payment_total,
      (invoice_total-payment_total) as balance,
      invoice_date,due_date,payment_date
from invoices
-- we have updated this view(deleted row for invoice_id =1)
 with check option
-- we used this clause to not loose data