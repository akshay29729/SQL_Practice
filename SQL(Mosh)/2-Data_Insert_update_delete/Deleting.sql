use sql_invoicing;
delete from invoices
where client_id in (
					 select client_id
                     from clients
                     where name ='Myworks')
-- WE have restored all changes that we have done in this upsating,inserting and deleting secton