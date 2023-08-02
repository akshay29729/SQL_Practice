use sql_invoicing;
update invoices
set payment_total= 0, payment_date= default
-- where invoice_id =3
where invoice_id in (3,4) -- it will update for 3 and 4
-- the code is same as 'Update_table' file, but to use feature of updating multiple rows,
-- we have changed setting before this and run programe for 'invoice_id=3' which is occuring 
-- more  than one time