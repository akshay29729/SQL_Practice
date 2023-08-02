use sql_invoicing;
select
     count(invoice_id) as Total_invoices,
     count(distinct client_id) as Cleints_in,
     sum(invoice_total) as total_Due_payment,
     max(invoice_total) as Maximum,
     min(invoice_total) as Minimum,
     avg(invoice_total) as Average,
    -- count(invoice_id)*avg(invoice_total) as Total_Remaining,
     count(*) as Expected_payments, --  COUNT(*)  returns the number of rows in a 'TABLE'
     -- including the rows that contain the NULL values.
     count(payment_date) as payments_done
from invoices
-- where payment_date is null
     
     