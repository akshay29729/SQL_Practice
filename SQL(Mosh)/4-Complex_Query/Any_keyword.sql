-- select clients at least 2 invoices
select *
from clients
where client_id = any (   -- in(
     select client_id
     from invoices
     group by client_id
     having count(*)>=2)