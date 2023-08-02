-- creating a procedure to get clients with given state with default value
use sql_invoicing;
drop procedure if exists get_clients_by_state;
delimiter //
create procedure get_clients_by_state(state char(2))
begin 
  if state is null then 
	set state = 'CA';
  else
	select * from clients c
	where c.state = state;
--     if state is null then 
--       select * from clients;
--     else 
--       select * from clients c
--       where c.state = state;
    end if;
--  select * from clients c
--  where c.state = ifnull(state,c.state);
end //
delimiter ;
-- or
-- begin

--	end
    