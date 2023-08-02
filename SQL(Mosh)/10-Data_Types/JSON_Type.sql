use sql_store;
update products
set properties = '
 {
   "Dimensions":[1,2,3],
   "Weight":10,
   "Manufacturer":{"Name":"Sony"}
   }
                '
where product_id = 1;