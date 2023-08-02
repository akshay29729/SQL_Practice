use sql_store2;
alter table customers
  -- add last_name varchar(50) not null,
   add last_name varchar(50) not null after first_name,
   modify column first_name varchar(55) default 'Annonymous',
   drop points;