select
     order_id,
     case 
         when year(order_date)=2019 then 'Active'
         when year(order_date)=2018 then 'Last Year'
         when year(order_date)<2018 then 'Archieved'
         else 'Future'
	end as Category
from  orders