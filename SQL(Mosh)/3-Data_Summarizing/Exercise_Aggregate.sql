use sql_invoicing;
select 
     'FIrst half of 2019' as Date_range,
     sum(invoice_total) as Total_sales,
	 sum(payment_total) as Total_payments,
   -- ( sum(invoice_total) - sum(payment_total)) as What_we_expect
     sum(invoice_total - payment_total) as What_we_expect
from invoices
where invoice_date between '2019-01-01' and '2019-06-30'
union
select 
     'Second half of 2019' as Date_range,
     sum(invoice_total) as Total_sales,
	 sum(payment_total) as Total_payments,
     ( sum(invoice_total) - sum(payment_total)) as What_we_expect
from invoices
where invoice_date between '2019-07-01' and '2019-12-31'
union
select 
     'Total' as Date_range,
     sum(invoice_total) as Total_sales,
	 sum(payment_total) as Total_payments,
     ( sum(invoice_total) - sum(payment_total)) as What_we_expect
from invoices
where invoice_date between '2019-01-01' and '2019-12-31'