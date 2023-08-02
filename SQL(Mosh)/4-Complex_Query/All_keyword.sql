-- select invoices larger than all inoices of client_id=3
use sql_invoicing;
select  *
from clients
join invoices using (client_id)
where invoice_total > all(                             -- in(
             select invoice_total                      --      select max(invoice_total) 
             from invoices                             --      from invoices
             where client_id =3)                       --      where client_id=3)