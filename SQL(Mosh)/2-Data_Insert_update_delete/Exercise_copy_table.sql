use sql_invoicing;
create table invoices_archived as -- if we don't write 'as' keyword still table gets created and no syntax error
-- occure, why????
select 
        i.invoice_id,
        i.number,
        c.name,
        i.invoice_total,
        i.payment_total,
        i.due_date,
        i.payment_date
from invoices i
join clients c
     on i.client_id = c.client_id
-- where i.payment_total > 0
where i.payment_date is not null