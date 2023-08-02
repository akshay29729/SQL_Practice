use sql_invoicing;
drop procedure if exists get_payments;
delimiter //
create procedure get_payments(client_id int,payment_method_id tinyint)
begin
     select * from payments p
     where p.client_id = ifnull(client_id,p.client_id) and 
		   p.payment_method = ifnull(payment_method_id,p.payment_method);
end //
delimiter ;