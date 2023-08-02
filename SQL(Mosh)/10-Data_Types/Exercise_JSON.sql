-- update or get separate properties from 'products' for product_id=1
use sql_store;
-- select
--      product_id,
--      json_extract(properties,'$.Weight'),
--      json_extract(properties,'$.Dimensions'),
--      json_extract(properties,'$.Dimensions[1]'),
--      json_extract(properties,'$.Manufacturer'),
--      json_extract(properties,'$.Manufacturer.Name')
-- from products
update products
set properties=json_set(
      properties,
      '$.Weight',20,
      '$.Age',10
      )
where product_id=1