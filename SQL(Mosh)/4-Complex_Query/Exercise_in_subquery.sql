use sql_invoicing;
select *
from clients
left join invoices using (client_id)
-- where invoice_id  is null 
where invoice_id  in ( select distinct invoice_id
                     from invoices
                     where payment_date is  null 
                     )
order by client_id