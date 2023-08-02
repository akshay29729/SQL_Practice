use sql_store2;
alter table orders
  drop primary key,
  add primary key(order_id),
  drop foreign key fk_orders_customers,
  add foreign key fk_orders_customers(customer_id)
     references customers(customer_id)
     on update cascade
     on delete no action