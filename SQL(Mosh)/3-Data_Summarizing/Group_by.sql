-- calculating all invoices info as per client_id
use sql_invoicing;
select
	 client_id,
     name,
     count(invoice_id) as Total_invoices,
     sum(invoice_total) as total_Due_payment,
     max(invoice_total) as Maximum,
     min(invoice_total) as Minimum,
     avg(invoice_total) as Average,
     count(*) as Expected_payments,
     count(payment_date) as payments_done,
     count(*) -count(payment_date) as Remaining_Payments
from invoices
join clients using(client_id)
group by client_id,name
order by client_id