use sql_invoicing;
drop procedure if exists get_invoices_for_client;
delimiter //
create procedure get_invoices_for_client(
           client_id int,
           out invoices_count int,
           out invoices_total decimal(9,2))
begin
     select 
          count(*),sum(invoice_total)
          into invoices_count,invoices_total
	 from invoices i
     where i.client_id = client_id and
           i.payment_total =0;
end //
 delimiter ;