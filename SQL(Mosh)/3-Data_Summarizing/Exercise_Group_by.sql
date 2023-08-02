use sql_invoicing;
select
     date,
     name,
     sum(amount) as Total_payments
from payments p
 cross join payment_methods pm
 -- join payment_methods pm -- both gives same answer
           on p.payment_method = pm.payment_method_id
 group by date,name -- we used two columns bcz date and name columns (separately)don't have distinct inputs in all rows
-- gropup by amount -- as here all amounts are different,so this will also give correct answer(but not evertime bcz
-- sometimes amounts also be same )
-- group by date -- this won't repeat date, so lost payment done by 'cash' on date '2019-01-08'
-- group by name -- we will get two rows only, i.e. 'cash' and 'Credit card' with two dates only
order by Total_payments desc