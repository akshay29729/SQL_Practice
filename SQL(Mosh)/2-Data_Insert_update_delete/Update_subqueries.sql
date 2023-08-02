use sql_invoicing;
update invoices
set payment_total= 0, payment_date= default
where client_id in (
                   select client_id
                   from clients
                   where state in ('CA',"NY")
				  )
-- where client_id =(
 --                  select client_id
 --                  from clients
 --                  where name in ('CA')
--				)