use sql_invoicing;
select  -- as we were already in sql_invoicing database, thats why we have not used 'use' keyword
        -- in future ass 'use' and then run
     c.name,
     -- sum(p.amount) as due_amount
     p.amount as due_amount
from clients c
natural join  payments p
-- group by c.name,due_amount
-- group by c.name
order by name;
-- run lines 6 and 10 together