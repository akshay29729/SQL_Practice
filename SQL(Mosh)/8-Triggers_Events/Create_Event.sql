use sql_invoicing;
delimiter //
 drop event if exists yearly_delete_stale_audit_row;
 create event yearly_delete_stale_audit_row
 on schedule
      every 1 year starts '2020-01-01' ends '2030-01-01'
Do Begin
       delete from payments_audit 
       where action_date < now() - interval 2 year;
end //
delimiter ;
