-- here we are changing state of customer_id=1, from "MA" to "VA" bcz thats hand mistake
-- run this after doing all programs from this section and restoeing data
use sql_store;
update customers
set state = "VA"
where customer_id =1
