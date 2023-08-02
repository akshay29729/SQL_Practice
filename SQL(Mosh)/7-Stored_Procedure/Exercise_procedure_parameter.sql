use sql_invoicing;
drop procedure if exists get_invoices_by_clients;
 delimiter //
 create procedure get_invoices_by_clients(client_id int)
 begin 
     select * from invoices_with_balance i
     where i.client_id = client_id;
end //
delimiter ;