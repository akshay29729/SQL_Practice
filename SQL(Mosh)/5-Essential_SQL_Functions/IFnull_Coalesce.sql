use sql_store;
select 
      order_id,
	  ifnull(shipper_id,'not mentioned') as shipper,
      coalesce(shipper_id,comments,'not mentioned') as shipper2,
      coalesce(shipper_id,'not mentioned') as shipper2
    -- if we don't write 'comments' here,then also no syntax error comes
from orders
order by order_id