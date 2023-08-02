-- find the clients with invoices
select *
from clients c
where exists(                               -- where client_id in(
            select client_id
            from invoices
            where client_id = c.client_id)