select
      concat(first_name,'  ',last_name) as customer,
      points,
      case 
         when points >3000 then 'Gold'
         when points >=2000 then 'Silver'
         else 'Bronze' -- we cans skip 'else' line
	  end as Category
from customers
order by points desc

      