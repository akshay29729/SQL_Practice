select 
     concat(first_name,'  ',last_name) as Customer,
     ifnull(phone, 'Unknown') as Phone1,
     coalesce(phone, 'Unknown') as Phone2
from customers