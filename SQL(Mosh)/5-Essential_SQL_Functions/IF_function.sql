select
      order_id,
      order_date,
      if(year(order_date)>=2018,'Active','Archieved')
	--  if(year(order_date)=2019,1,0)
from orders