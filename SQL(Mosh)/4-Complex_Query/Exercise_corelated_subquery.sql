use sql_invoicing;
select *
from invoices i
-- join clients using (client_id)
where invoice_total >(
                       select avg(invoice_total)
                       from invoices
                       where client_id = i.client_id
                       )