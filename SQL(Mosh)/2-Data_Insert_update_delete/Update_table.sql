use sql_invoicing;
update invoices
-- set payment_total= 10, payment_date= default
set payment_total= invoice_total*0.5, payment_date=due_date
where invoice_id =3
-- where invoice_id =1