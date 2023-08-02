-- we have created function to get risk factor for client
use sql_invoicing;
select 
	 client_id,name,
     get_risk_factor(client_id) 
from clients  