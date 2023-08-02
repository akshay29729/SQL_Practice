use sql_invoicing;
delimiter //
create procedure get_invoices_with_balance()
begin 
     select
            invoice_id,client_id,number,
            invoice_total,payment_total,
            (invoice_total - payment_total) as Balance,
            invoice_date,payment_date,due_date
	from invoices
    where  (invoice_total - payment_total)>0;
end //
delimiter ;
-- instead of writing this body we can use the 'view' created earlier 'client_balance' or 'invoices_with_balance'