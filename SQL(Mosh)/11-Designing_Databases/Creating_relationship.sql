create database if not exists sql_store2;
use sql_store2;
drop table if exists orders;
drop table if exists customers;
-- if we don't run above line and run, we won't get error but get warning about pre-existing table 
create table if not exists customers(
  customer_id int primary key auto_increment,
  first_name varchar(50) not null,
  points int not null default 0,
  email varchar(255) not null unique
);
create table if not exists orders(
  order_id int primary key,
  customer_id int not null,
  foreign key fk_orders_customers (customer_id)
     references customers (customer_id)
     on update cascade
     on delete no action
     );